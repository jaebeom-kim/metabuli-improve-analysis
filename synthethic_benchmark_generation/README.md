## Download GTDB genomes and taxonomy
```
# 1. Download GTDB metadata
./download_gtdb_metadata.sh DBDIR

# 2. Download GTDB HQ genomes
./download_gtdb_hq_genomes.sh DBDIR MIN_COMPLETENESS MAX_CONTAMINATION

# 3. Download GTDB taxonomy
https://github.com/shenwei356/gtdb-taxdump/releases
```
The version of assemblies are ignored during download.
For example, when a GTDB entry has accession 'GCA_000000000.1', only 'GCA_000000000' is used to search the assembly in Genbank's assembly summary. 

## Make test sets
- `ASSEMBLY_ACCESSION_LIST`: list of paths to downloaded assembly accessions. one per line. Assemblies having "ena-yuan" in their name are excluded. 
- `TAX_DUMP`: GTDB taxonomy dump file.

```
./make_gtdb_benchmark_set.sh ASSEMBLY_ACCESSION_LIST TAX_DUMP METABULI_BINARY
```
It generates files:
- `starting_genome_pool.txt`: initial genome pool.
- `starting_genome_pool.txt.excludedFamilies`: assemblies to simulate novel families reads
- `starting_genome_pool.txt.excludedGenera`: assemblies to simulate novel genera reads.
- `starting_genome_pool.txt.excludedSpecies`: assemblies to simulate novel species reads.
- `starting_genome_pool.txt.excludedAssembly`: assemblies to simulate novel assembly reads.
- `starting_genome_pool.txt.includedAssembly`: assemblies to test assembly-specific read detection.
- `starting_genome_pool.txt.totalExcludedAssembly`: all excluded assemblies.
- `starting_genome_pool.txt.databaseAssembly`: assemblies to build a reference database.
- `starting_genome_pool.txt.databaseAssembly.subspeciesInclusionQuerySet`: assemblies to test subspecies inclusion in database.
- `starting_genome_pool.txt.databaseAssembly.speciesInclusionQuerySet`: assemblies to test species inclusion in database.


## Build a reference database
Using the generated `starting_genome_pool.txt.databaseAssembly` file, make a `REFERENCE_GENOMES` file that contains paths to reference genomes.
```
metabuli build DBDIR REFERENCE_GENOMES TAX_DUMP/taxid.map --taxonomy-path TAX_DUMP --gtdb 1 --make-library 0 --sycmer 0
```

## Simulate reads for exclusion tests
Using the generated excluded assembly files, simulate paired-end reads from the assemblies.
```
# example for species-level novel reads
./simulate_paired-end_reads.sh ASSEMBLY_ACCESSION_LIST ASSEMBLY_ACCESSION_LIST.excludedSpecies OUTPUT_DIR DEPTH
```

## Simulate reads for inclusion tests
