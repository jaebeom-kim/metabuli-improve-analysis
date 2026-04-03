#!/bin/bash

# Run 5 times per s-mer len
for i in {1..1}; do
    echo "Run $i for s-mer length 5"
    ~/dev/Metabuli/release/src/metabuli classify \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-ex-100_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-ex-100_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/11101110111 \
        /fast/jaebeom/benchmark/gtdb-genomes/11101110111 \
        sp-ex-s5 \
        --syncmer 1 --smer-len 5 \
        --threads 64 
done

for i in {1..1}; do
    echo "Run $i for s-mer length 6"
    ~/dev/Metabuli/release/src/metabuli classify \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-ex-100_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-ex-100_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/11101110111 \
        /fast/jaebeom/benchmark/gtdb-genomes/11101110111 \
        sp-ex-s6 \
        --syncmer 1 --smer-len 6 \
        --threads 64 
done


for i in {1..1}; do
    echo "Run $i for s-mer length 7"
    ~/dev/Metabuli/release/src/metabuli classify \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-ex-100_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-ex-100_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/11101110111 \
        /fast/jaebeom/benchmark/gtdb-genomes/11101110111 \
        sp-ex-s7 \
        --syncmer 1 --smer-len 7 \
        --threads 64
done


# Species inclusion test

for i in {1..1}; do
    echo "Run $i for s-mer length 5"
    ~/dev/Metabuli/release/src/metabuli classify \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-in-100_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-in-100_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/11101110111 \
        /fast/jaebeom/benchmark/gtdb-genomes/11101110111 \
        sp-in-s5 \
        --syncmer 1 --smer-len 5 \
        --threads 64 
done

for i in {1..1}; do
    echo "Run $i for s-mer length 6"
    ~/dev/Metabuli/release/src/metabuli classify \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-in-100_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-in-100_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/11101110111 \
        /fast/jaebeom/benchmark/gtdb-genomes/11101110111 \
        sp-in-s6 \
        --syncmer 1 --smer-len 6 \
        --threads 64 
done


for i in {1..1}; do
    echo "Run $i for s-mer length 7"
    ~/dev/Metabuli/release/src/metabuli classify \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-in-100_1.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/simulated_reads/sp-in-100_2.fna \
        /fast/jaebeom/benchmark/gtdb-genomes/11101110111 \
        /fast/jaebeom/benchmark/gtdb-genomes/11101110111 \
        sp-in-s7 \
        --syncmer 1 --smer-len 7 \
        --threads 64 
done

