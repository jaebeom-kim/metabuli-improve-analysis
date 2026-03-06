#!/bin/bash
DBDIR=$1
COMP=$2
CONTEM=$3
ASSEMBLY_LEVEL=$4 # csv of acceptable assembly levels, e.g., "Complete Genome,Chromosome"

if [ -z "$DBDIR" ] || [ -z "$COMP" ] || [ -z "$CONTEM" ] || [ -z "$ASSEMBLY_LEVEL" ]; then
    echo "Usage: $0 <DBDIR> <MIN_COMPLETENESS(0-100)> <MAX_CONTAMINATION(0-100)> <ASSEMBLY_LEVEL>"
    exit 1
fi

METAFILE="$DBDIR/gtdb_metadata.tsv"
if [ ! -f "$METAFILE" ]; then
    echo "Metadata file not found: $METAFILE"
    exit 2
fi

# Get the column number of "ncbi_assembly_level", "checkm2_completeness", and "checkm2_contamination"
assembly_level_col=$(head -1 "$METAFILE" | tr '\t' '\n' | grep -n '^ncbi_assembly_level$' | cut -d: -f1)
checkm_completeness_col=$(head -1 "$METAFILE" | tr '\t' '\n' | grep -n '^checkm2_completeness$' | cut -d: -f1)
checkm_contamination_col=$(head -1 "$METAFILE" | tr '\t' '\n' | grep -n '^checkm2_contamination$' | cut -d: -f1)
# assembly_accession_col=$(head -1 $DBDIR/gtdb_metadata.tsv | tr '\t' '\n' | grep -n '^ncbi_genbank_assembly_accession$' | cut -d: -f1)

# If checkm2 completeness and contamination are not found, use checkm completeness and contamination
if [ -z "$checkm_completeness_col" ]; then
    checkm_completeness_col=$(head -1 gtdb_metadata.tsv | tr '\t' '\n' | grep -n '^checkm_completeness$' | cut -d: -f1)
fi

if [ -z "$checkm_contamination_col" ]; then
    checkm_contamination_col=$(head -1 gtdb_metadata.tsv | tr '\t' '\n' | grep -n '^checkm_contamination$' | cut -d: -f1)
fi

# Convert ASSEMBLY_LEVEL csv to array
IFS=',' read -r -a assembly_levels_array <<< "$ASSEMBLY_LEVEL"

# Create a temporary file with acceptable assembly levels for awk
awk -v alc="$assembly_level_col" \
    -v cpl="$checkm_completeness_col" \
    -v ctm="$checkm_contamination_col" \
    -v MINCOMP="$COMP" \
    -v MAXCONT="$CONTEM" \
    -v levels="$ASSEMBLY_LEVEL" \
    -F '\t' '
    BEGIN {
        split(levels, level_arr, ",")
        for (i in level_arr) {
            acceptable_levels[level_arr[i]] = 1
        }
    }
    NR==1 {next}
    { 
        level = $(alc)
        completeness = $(cpl) + 0
        contamination = $(ctm) + 0

        if (level in acceptable_levels && 
            (contamination < (MAXCONT + 0)) && 
            (completeness > (MINCOMP + 0))) 
        {
            print completeness "\t" contamination
            print substr($1, 4)
        }
    }' "$METAFILE" > "$DBDIR/filtered_assembly_accession.tsv"

exit 0

awk -F '.' '{print $1}' $DBDIR/filtered_assembly_accession.tsv > $DBDIR/filtered_assembly_accession_no_version.tsv

grep "GCF" $DBDIR/filtered_assembly_accession_no_version.tsv > $DBDIR/filtered_assembly_accession_no_version_refseq.tsv
grep "GCA" $DBDIR/filtered_assembly_accession_no_version.tsv > $DBDIR/filtered_assembly_accession_no_version_genbank.tsv

# Download Genbank assembly summary
aria2c -x 16 -j 16 -s 16 \
    https://ftp.ncbi.nlm.nih.gov/genomes/genbank/archaea/assembly_summary.txt \
    -d $DBDIR
mv $DBDIR/assembly_summary.txt $DBDIR/assembly_summary_archaea_gb.txt

aria2c -x 16 -j 16 -s 16 \
    https://ftp.ncbi.nlm.nih.gov/genomes/genbank/bacteria/assembly_summary.txt \
    -d $DBDIR
mv $DBDIR/assembly_summary.txt $DBDIR/assembly_summary_bacteria_gb.txt

# Download RefSeq assembly summary
aria2c -x 16 -j 16 -s 16 \
    https://ftp.ncbi.nlm.nih.gov/genomes/refseq/archaea/assembly_summary.txt \
    -d $DBDIR
mv $DBDIR/assembly_summary.txt $DBDIR/assembly_summary_archaea_rs.txt

aria2c -x 16 -j 16 -s 16 \
    https://ftp.ncbi.nlm.nih.gov/genomes/refseq/bacteria/assembly_summary.txt \
    -d $DBDIR
mv $DBDIR/assembly_summary.txt $DBDIR/assembly_summary_bacteria_rs.txt

# Get ftp path for each filtered assembly accession
grep -f $DBDIR/filtered_assembly_accession_no_version_genbank.tsv $DBDIR/assembly_summary_archaea_gb.txt \
    | awk -F '\t' '{print $20}' > $DBDIR/ftp_path_genomic_tmp.txt

grep -f $DBDIR/filtered_assembly_accession_no_version_genbank.tsv $DBDIR/assembly_summary_bacteria_gb.txt \
    | awk -F '\t' '{print $20}' >> $DBDIR/ftp_path_genomic_tmp.txt

grep -f $DBDIR/filtered_assembly_accession_no_version_refseq.tsv $DBDIR/assembly_summary_archaea_rs.txt \
    | awk -F '\t' '{print $20}' >> $DBDIR/ftp_path_genomic_tmp.txt

grep -f $DBDIR/filtered_assembly_accession_no_version_refseq.tsv $DBDIR/assembly_summary_bacteria_rs.txt \
    | awk -F '\t' '{print $20}' >> $DBDIR/ftp_path_genomic_tmp.txt

awk -F '/' '{print $0"/"$NF"_genomic.fna.gz"}' $DBDIR/ftp_path_genomic_tmp.txt > $DBDIR/ftp_path_genomic_fna.txt

# Download genomes
mkdir -p $DBDIR/genomes
aria2c -x 16 -j 16 -s 16 -i $DBDIR/ftp_path_genomic_fna.txt -d $DBDIR/genomes
find $DBDIR/genomes -type f -name "*.fna.gz" > $DBDIR/downloaded_files.txt