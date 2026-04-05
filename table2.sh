#!/bin/bash

# Inclusion

# # standard
# ~/dev/Metabuli/release/src/metabuli classify \
#         /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-in-100_1.fna \
#         /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-in-100_2.fna \
#         /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db \
#         /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db \
#         sp-in-0404 \
#         --threads 64 

# # reduced 8 11 0
# ~/dev/Metabuli/release/src/metabuli classify \
#         /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-in-100_1.fna \
#         /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-in-100_2.fna \
#         /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-reducedaa-8mer \
#         /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-reducedaa-8mer \
#         sp-in-0404 \
#         --threads 64

# # reduced 9 11 0
# ~/dev/Metabuli/release/src/metabuli classify \
#         /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-in-100_1.fna \
#         /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-in-100_2.fna \
#         /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-reducedaa \
#         /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-reducedaa \
#         sp-in-0404-11 \
#         --min-aa 11 \
#         --threads 64

# # reduced 9 12 0
# ~/dev/Metabuli/release/src/metabuli classify \
#         /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-in-100_1.fna \
#         /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-in-100_2.fna \
#         /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-reducedaa \
#         /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-reducedaa \
#         sp-in-0404-12 \
#         --min-aa 12 \
#         --threads 64

# # standard 8 11 2  
# ~/dev/Metabuli/release/src/metabuli classify \
#         /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-in-100_1.fna \
#         /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-in-100_2.fna \
#         /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-1110111011-re \
#         /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-1110111011-re \
#         sp-in-0404 \
#         --min-aa 11 \
#         --threads 64


# Exclusion

# standard
~/dev/Metabuli/release/src/metabuli classify  -e 0 \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-ex-100_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-ex-100_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db \
        sp-ex-0405 \
        --threads 64    

# reduced 8 11 0
~/dev/Metabuli/release/src/metabuli classify  -e 0 \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-ex-100_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-ex-100_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-reducedaa-8mer \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-reducedaa-8mer \
        sp-ex-0405 \
        --threads 64

# reduced 9 11 0
~/dev/Metabuli/release/src/metabuli classify  -e 0 \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-ex-100_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-ex-100_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-reducedaa \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-reducedaa \
        sp-ex-0405-11 \
        --threads 64

# reduced 9 12 0
~/dev/Metabuli/release/src/metabuli classify  -e 0 \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-ex-100_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-ex-100_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-reducedaa \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-reducedaa \
        sp-ex-0405-12 \
        --min-aa 12 \
        --threads 64

# standard 8 11 2
~/dev/Metabuli/release/src/metabuli classify  -e 0 \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-ex-100_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-ex-100_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-1110111011-re \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-1110111011-re \
        sp-ex-0405 \
        --threads 64

