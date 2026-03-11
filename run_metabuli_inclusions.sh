#!/bin/bash

# Subspecies inclusion test
# Metabuli Old
~/dev/Metabuli/release/src/metabuli classify \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/subsp-in-100_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/subsp-in-100_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db \
        subsp-in \
        --threads 64 \
        > /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db/subsp-in.log

# Metabuli New
~/dev/Metabuli/release/src/metabuli classify \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/subsp-in-100_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/subsp-in-100_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111 \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111 \
        subsp-in \
        --threads 64 \
        --min-cons-cnt 2 \
        --max-shift 4 \
        > /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111/subsp-in.log

# Metabuli Precise
~/dev/Metabuli/release/src/metabuli classify \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/subsp-in-100_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/subsp-in-100_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111 \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111 \
        subsp-in+0.2 \
        --threads 64 \
        --min-score 0.2 \
        --min-cons-cnt 2 \
        --max-shift 4 \
        > /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111/subsp-in+0.2.log

# Metabuli Light
~/dev/Metabuli/release/src/metabuli classify \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/subsp-in-100_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/subsp-in-100_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s6 \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s6 \
        subsp-in-light \
        --threads 64 \
        --min-cons-cnt 2 \
        --max-shift 8 \
        > /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s6/subsp-in-light.log

# Species inclusion test
# Metabuli Old
~/dev/Metabuli/release/src/metabuli classify \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-in-100_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-in-100_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db \
        sp-in \
        --threads 64 \
        > /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db/sp-in.log

# Metabuli New
~/dev/Metabuli/release/src/metabuli classify \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-in-100_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-in-100_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111 \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111 \
        sp-in \
        --threads 64 \
        --min-cons-cnt 2 \
        --max-shift 4 \
        > /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111/sp-in.log

# Metabuli Precise
~/dev/Metabuli/release/src/metabuli classify \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-in-100_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-in-100_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111 \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111 \
        sp-in+0.2 \
        --threads 64 \
        --min-score 0.2 \
        --min-cons-cnt 2 \
        --max-shift 4 \
        > /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111/sp-in+0.2.log

# Metabuli Light
~/dev/Metabuli/release/src/metabuli classify \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-in-100_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-in-100_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s6 \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s6 \
        sp-in-light \
        --threads 64 \
        --min-cons-cnt 2 \
        --max-shift 8 \
        > /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s6/sp-in-light.log