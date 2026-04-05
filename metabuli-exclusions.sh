#!/bin/bash

# subspecies exclusion test

# Metabuli-New
~/dev/Metabuli/release/src/metabuli classify \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/subsp-ex-small_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/subsp-ex-small_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/11101110111 \
        /fast/jaebeom/benchmark/gtdb-genomes/11101110111 \
        subsp-ex-0405 \
        --threads 32

# Metabuli-Light
~/dev/Metabuli/release/src/metabuli classify \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/subsp-ex-small_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/subsp-ex-small_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/11101110111 \
        /fast/jaebeom/benchmark/gtdb-genomes/11101110111 \
        subsp-ex-light-0405 \
        --syncmer 1 --smer-len 6 \
        --threads 32

# Metabuli-Precise
~/dev/Metabuli/release/src/metabuli classify \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/subsp-ex-small_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/subsp-ex-small_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/11101110111 \
        /fast/jaebeom/benchmark/gtdb-genomes/11101110111 \
        subsp-ex-precise-0405 \
        --precise  1 \
        --threads 32


# species exclusion test

# Metabuli-New
~/dev/Metabuli/release/src/metabuli classify \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-ex-100_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-ex-100_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/11101110111 \
        /fast/jaebeom/benchmark/gtdb-genomes/11101110111 \
        sp-ex-0405 \
        --threads 32

# Metabuli-Light
~/dev/Metabuli/release/src/metabuli classify \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-ex-100_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-ex-100_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/11101110111 \
        /fast/jaebeom/benchmark/gtdb-genomes/11101110111 \
        sp-ex-light-0405 \
        --syncmer 1 --smer-len 6 \
        --threads 32

# Metabuli-Precise
~/dev/Metabuli/release/src/metabuli classify \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-ex-100_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-ex-100_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/11101110111 \
        /fast/jaebeom/benchmark/gtdb-genomes/11101110111 \
        sp-ex-precise-0405 \
        --precise 1 \
         --threads 32   


# genus exclusion test

# Metabuli-New
~/dev/Metabuli/release/src/metabuli classify \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/genus-ex-small_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/genus-ex-small_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/11101110111 \
        /fast/jaebeom/benchmark/gtdb-genomes/11101110111 \
        genus-ex-0405 \
        --threads 32    

# Metabuli-Light
~/dev/Metabuli/release/src/metabuli classify \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/genus-ex-small_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/genus-ex-small_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/11101110111 \
        /fast/jaebeom/benchmark/gtdb-genomes/11101110111 \
        genus-ex-light-0405 \
        --syncmer 1 --smer-len 6 \
        --threads 32

# Metabuli-Precise
~/dev/Metabuli/release/src/metabuli classify \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/genus-ex-small_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/genus-ex-small_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/11101110111 \
        /fast/jaebeom/benchmark/gtdb-genomes/11101110111 \
        genus-ex-precise-0405 \
        --precise 1 \
        --threads 32

# family exclusion test
# Metabuli-New
~/dev/Metabuli/release/src/metabuli classify \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/family-ex-small_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/family-ex-small_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/11101110111 \
        /fast/jaebeom/benchmark/gtdb-genomes/11101110111 \
        family-ex-0405 \
        --threads 32    

# Metabuli-Light
~/dev/Metabuli/release/src/metabuli classify \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/family-ex-small_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/family-ex-small_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/11101110111 \
        /fast/jaebeom/benchmark/gtdb-genomes/11101110111 \
        family-ex-light-0405 \
        --syncmer 1 --smer-len 6 \
        --threads 32    

# Metabuli-Precise
~/dev/Metabuli/release/src/metabuli classify \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/family-ex-small_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/family-ex-small_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/11101110111 \
        /fast/jaebeom/benchmark/gtdb-genomes/11101110111 \
        family-ex-precise-0405 \
        --precise 1 \
        --threads 32