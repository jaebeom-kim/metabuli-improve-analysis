#!/bin/bash
FASTA_PATHS=$1
QUERY_ACC=$2
OUTDIR=$3
COVERAGE=$4

if [ -z "$FASTA_PATHS" ] || [ -z "$QUERY_ACC" ] || [ -z "$OUTDIR" ] || [ -z "$COVERAGE" ]; then
    echo "Usage: $0 <fasta_file_list> <inclusion_file> <output_directory> <coverage>"
    exit 1
fi

mkdir -p $OUTDIR

grep -v "ena-yuan" "$FASTA_PATHS" > "temp_genome_pool.txt"

FASTA_PATHS="temp_genome_pool.txt"

awk -F '\t' '{print $NF}' $QUERY_ACC | grep "^GC" | awk -F',' '{print $1"\n"$2}' > query_accession_list.txt


grep -f query_accession_list.txt $FASTA_PATHS > selected_fasta_files.txt

# check if line numbers of selected_fasta_files.txt and query_accession_list are the same
LINE_COUNT_FASTA=$(wc -l < selected_fasta_files.txt)
LINE_COUNT_QUERY=$(wc -l < query_accession_list.txt)
if [ "$LINE_COUNT_FASTA" -ne "$LINE_COUNT_QUERY" ]; then
    echo "Error: Number of selected fasta files ($LINE_COUNT_FASTA) does not match number of query accessions ($LINE_COUNT_QUERY)"
    exit 2
fi

# Iterate over the list of fasta files
# Each line contains the path to the fasta file which includes the assembly accession
# Get the assembly accession from the fasta file path and use it as the read name prefix
# The regex of assembly accession is GC[AF]_[0-9]+\.[0-9]+
while read -r FASTA; do
    # Get the assembly accession from the fasta file path
    ASSEMBLY_ACCESSION=$(echo $FASTA | grep -oP 'GC[AF]_[0-9]+\.[0-9]+')
    echo "Simulating reads for $ASSEMBLY_ACCESSION"

    # unzip fasta if needed
    if [[ $FASTA == *.gz ]]; then
        gzip -dk $FASTA
        FASTA=${FASTA%.gz}
    fi
    
    # Get file size of the fasta file
    GENOME_SIZE=$(stat -c %s $FASTA)
    # READ_NUM=$(echo "scale=4; $GENOME_SIZE * $COVERAGE / 300" | bc)
    READ_NUM=$((GENOME_SIZE * $COVERAGE / 300))
    # echo "Genome size: $GENOME_SIZE"
    # echo "Read number: $READ_NUM"
   
    ~/mason2-2.0.9-Linux-x86_64/bin/mason_simulator -q \
        --illumina-read-length 150 \
        --illumina-prob-mismatch 0.0011 \
        --illumina-prob-mismatch-begin 0.00055 \
        --illumina-prob-mismatch-end 0.0022 \
        --fragment-mean-size 500 \
        --read-name-prefix "${ASSEMBLY_ACCESSION}_" \
        -ir "${FASTA}" \
        -n "${READ_NUM}" \
        -o "${OUTDIR}/${ASSEMBLY_ACCESSION}_${COVERAGE}_1.fasta" \
        -or "${OUTDIR}/${ASSEMBLY_ACCESSION}_${COVERAGE}_2.fasta"
done < selected_fasta_files.txt

