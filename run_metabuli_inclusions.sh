#!/bin/bash

# Subspecies inclusion test
# # Metabuli Old
# ~/dev/Metabuli/release/src/metabuli classify \
#         /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/subsp-in-100_1.fna \
#         /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/subsp-in-100_2.fna \
#         /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db \
#         /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db \
#         subsp-in \
#         --threads 64 \
#         > /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db/subsp-in.log

# Metabuli New
~/dev/Metabuli/release/src/metabuli classify \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/subsp-in-100_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/subsp-in-100_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/11101110111 \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-res-0405 \
        subsp-in \
        --threads 64 

# Metabuli Precise
~/dev/Metabuli/release/src/metabuli classify \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/subsp-in-100_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/subsp-in-100_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/11101110111 \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-res-0405 \
        subsp-in-precise \
        --threads 64 \
        --precise 1 

# Metabuli Light
~/dev/Metabuli/release/src/metabuli classify \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/subsp-in-100_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/subsp-in-100_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/11101110111 \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-res-0405 \
        subsp-in-light \
        --threads 64 \
        --syncmer 1 --smer-len 6


# Species inclusion test
# Metabuli Old
# ~/dev/Metabuli/release/src/metabuli classify \
#         /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-in-100_1.fna \
#         /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-in-100_2.fna \
#         /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db \
#         /fast/jaebeom/benchmark/gtdb-genomes/metabuli-res-0405 \
#         sp-in \
#         --threads 64 \
#         > /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db/sp-in.log

# Metabuli New
~/dev/Metabuli/release/src/metabuli classify \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-in-100_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-in-100_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/11101110111 \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-res-0405 \
        sp-in \
        --threads 64 

# Metabuli Precise
~/dev/Metabuli/release/src/metabuli classify \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-in-100_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-in-100_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/11101110111 \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-res-0405 \
        sp-in-precise \
        --threads 64 \
        --precise 1 

# Metabuli Light
~/dev/Metabuli/release/src/metabuli classify \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-in-100_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-in-100_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/11101110111 \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-res-0405 \
        sp-in-light \
        --threads 64 \
        --syncmer 1 --smer-len 6