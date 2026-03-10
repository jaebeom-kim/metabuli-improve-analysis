#!/bin/bash

# s-mer 5

# Subspecies exclusion test
~/dev/Metabuli/release/src/metabuli classify \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/subsp-ex-small_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/subsp-ex-small_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s5 \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s5 \
        subsp-ex \
        --threads 64 \
        --min-cons-cnt 2 \
        --max-shift 8 > /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s5/subsp-ex.log

# Species exclusion test
~/dev/Metabuli/release/src/metabuli classify \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-ex-100_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-ex-100_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s5 \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s5 \
        sp-ex \
        --threads 64 \
        --min-cons-cnt 2 \
        --max-shift 8 > /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s5/sp-ex.log


# Genus exclusion test
~/dev/Metabuli/release/src/metabuli classify \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/genus-ex-small_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/genus-ex-small_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s5 \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s5 \
        genus-ex \
        --threads 64 \
        --min-cons-cnt 2 \
        --max-shift 8 > /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s5/genus-ex.log

# Family exclusion test
~/dev/Metabuli/release/src/metabuli classify \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/family-ex-small_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/family-ex-small_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s5 \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s5 \
        family-ex \
        --threads 64 \
        --min-cons-cnt 2 \
        --max-shift 8 > /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s5/family-ex.log

# s-mer 6
# Subspecies exclusion test
~/dev/Metabuli/release/src/metabuli classify \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/subsp-ex-small_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/subsp-ex-small_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s6 \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s6 \
        subsp-ex \
        --threads 64 \
        --min-cons-cnt 2 \
        --max-shift 8 > /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s6/subsp-ex.log

# Species exclusion test
~/dev/Metabuli/release/src/metabuli classify \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-ex-100_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-ex-100_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s6 \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s6 \
        sp-ex \
        --threads 64 \
        --min-cons-cnt 2 \
        --max-shift 8 > /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s6/sp-ex.log


# Genus exclusion test
~/dev/Metabuli/release/src/metabuli classify \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/genus-ex-small_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/genus-ex-small_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s6 \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s6 \
        genus-ex \
        --threads 64 \
        --min-cons-cnt 2 \
        --max-shift 8 > /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s6/genus-ex.log

# Family exclusion test
~/dev/Metabuli/release/src/metabuli classify \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/family-ex-small_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/family-ex-small_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s6 \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s6 \
        family-ex \
        --threads 64 \
        --min-cons-cnt 2 \
        --max-shift 8 > /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s6/family-ex.log


# s-mer 7
# Subspecies exclusion test
~/dev/Metabuli/release/src/metabuli classify \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/subsp-ex-small_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/subsp-ex-small_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s7 \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s7 \
        subsp-ex \
        --threads 64 \
        --min-cons-cnt 2 \
        --max-shift 8 > /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s7/subsp-ex.log  

# Species exclusion test
~/dev/Metabuli/release/src/metabuli classify \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-ex-100_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-ex-100_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s7 \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s7 \
        sp-ex \
        --threads 64 \
        --min-cons-cnt 2 \
        --max-shift 8 > /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s7/sp-ex.log

# Genus exclusion test
~/dev/Metabuli/release/src/metabuli classify \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/genus-ex-small_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/genus-ex-small_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s7 \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s7 \
        genus-ex \
        --threads 64 \
        --min-cons-cnt 2 \
        --max-shift 8 > /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s7/genus-ex.log  

# Family exclusion test
~/dev/Metabuli/release/src/metabuli classify \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/family-ex-small_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/family-ex-small_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s7 \
        /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s7 \
        family-ex \
        --threads 64 \
        --min-cons-cnt 2 \
        --max-shift 8 > /fast/jaebeom/benchmark/gtdb-genomes/metabuli-db-11101110111-s7/family-ex.log

