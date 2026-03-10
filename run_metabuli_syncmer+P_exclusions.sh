#!/bin/bash

# s-mer 6
# Subspecies exclusion test
~/dev/Metabuli/release/src/metabuli classify \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/subsp-ex-small_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/subsp-ex-small_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s6 \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s6 \
        subsp-ex+P \
        --threads 64 \
        --min-cons-cnt 2 \
        --min-score 0.2 \
        --max-shift 8 > /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s6/subsp-ex.log

# Species exclusion test
~/dev/Metabuli/release/src/metabuli classify \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-ex-100_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-ex-100_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s6 \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s6 \
        sp-ex+P \
        --threads 64 \
        --min-cons-cnt 2 \
        --min-score 0.2 \
        --max-shift 8 > /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s6/sp-ex.log


# Genus exclusion test
~/dev/Metabuli/release/src/metabuli classify \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/genus-ex-small_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/genus-ex-small_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s6 \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s6 \
        genus-ex+P \
        --threads 64 \
        --min-cons-cnt 2 \
        --min-score 0.2 \
        --max-shift 8 > /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s6/genus-ex.log

# Family exclusion test
~/dev/Metabuli/release/src/metabuli classify \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/family-ex-small_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/family-ex-small_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s6 \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s6 \
        family-ex+P \
        --threads 64 \
        --min-cons-cnt 2 \
        --min-score 0.2 \
        --max-shift 8 > /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s6/family-ex.log
