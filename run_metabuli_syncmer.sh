#!/bin/bash

# Run 5 times per s-mer len
for i in {1..5}; do
    echo "Run $i for s-mer length 5"
    ~/dev/Metabuli/release/src/metabuli classify \
        /mnt/scratch/jaebeom/speed/sp-ex_1.fna \
        /mnt/scratch/jaebeom/speed/sp-ex_2.fna \
        /mnt/scratch/jaebeom/speed/metabuli-db-11101110111-s5 \
        /mnt/scratch/jaebeom/speed/metabuli-db-11101110111-s5 \
        sp-ex \
        --threads 64 \
        --min-cons-cnt 2 \
        --max-shift 8 > /mnt/scratch/jaebeom/speed/metabuli-db-11101110111-s5/sp-ex-run_${i}.log
done

for i in {1..5}; do
    echo "Run $i for s-mer length 6"
    ~/dev/Metabuli/release/src/metabuli classify \
        /mnt/scratch/jaebeom/speed/sp-ex_1.fna \
        /mnt/scratch/jaebeom/speed/sp-ex_2.fna \
        /mnt/scratch/jaebeom/speed/metabuli-db-11101110111-s6 \
        /mnt/scratch/jaebeom/speed/metabuli-db-11101110111-s6 \
        sp-ex \
        --threads 64 \
        --min-cons-cnt 2 \
        --max-shift 8 > /mnt/scratch/jaebeom/speed/metabuli-db-11101110111-s6/sp-ex-run_${i}.log
done


for i in {1..5}; do
    echo "Run $i for s-mer length 7"
    ~/dev/Metabuli/release/src/metabuli classify \
        /mnt/scratch/jaebeom/speed/sp-ex_1.fna \
        /mnt/scratch/jaebeom/speed/sp-ex_2.fna \
        /mnt/scratch/jaebeom/speed/metabuli-db-11101110111-s7 \
        /mnt/scratch/jaebeom/speed/metabuli-db-11101110111-s7 \
        sp-ex \
        --threads 64 \
        --min-cons-cnt 2 \
        --max-shift 8 > /mnt/scratch/jaebeom/speed/metabuli-db-11101110111-s7/sp-ex-run_${i}.log
done

for i in {1..5}; do
    echo "Run $i "
    ~/dev/Metabuli/release/src/metabuli classify \
        /mnt/scratch/jaebeom/speed/sp-ex_1.fna \
        /mnt/scratch/jaebeom/speed/sp-ex_2.fna \
        /mnt/scratch/jaebeom/speed/metabuli-db-11101110111 \
        /mnt/scratch/jaebeom/speed/metabuli-db-11101110111 \
        sp-ex \
        --threads 64 \
        --min-cons-cnt 2 \
        --max-shift 4 > /mnt/scratch/jaebeom/speed/metabuli-db-11101110111/sp-ex-run_${i}.log
done


# Species inclusion test

for i in {1..5}; do
    echo "Run $i for s-mer length 5"
    ~/dev/Metabuli/release/src/metabuli classify \
        /mnt/scratch/jaebeom/speed/sp-in_1.fna \
        /mnt/scratch/jaebeom/speed/sp-in_2.fna \
        /mnt/scratch/jaebeom/speed/metabuli-db-11101110111-s5 \
        /mnt/scratch/jaebeom/speed/metabuli-db-11101110111-s5 \
        sp-in \
        --threads 64 \
        --min-cons-cnt 2 \
        --max-shift 8 > /mnt/scratch/jaebeom/speed/metabuli-db-11101110111-s5/sp-in-run_${i}.log
done

for i in {1..5}; do
    echo "Run $i for s-mer length 6"
    ~/dev/Metabuli/release/src/metabuli classify \
        /mnt/scratch/jaebeom/speed/sp-in_1.fna \
        /mnt/scratch/jaebeom/speed/sp-in_2.fna \
        /mnt/scratch/jaebeom/speed/metabuli-db-11101110111-s6 \
        /mnt/scratch/jaebeom/speed/metabuli-db-11101110111-s6 \
        sp-in \
        --threads 64 \
        --min-cons-cnt 2 \
        --max-shift 8 > /mnt/scratch/jaebeom/speed/metabuli-db-11101110111-s6/sp-in-run_${i}.log
done


for i in {1..5}; do
    echo "Run $i for s-mer length 7"
    ~/dev/Metabuli/release/src/metabuli classify \
        /mnt/scratch/jaebeom/speed/sp-in_1.fna \
        /mnt/scratch/jaebeom/speed/sp-in_2.fna \
        /mnt/scratch/jaebeom/speed/metabuli-db-11101110111-s7 \
        /mnt/scratch/jaebeom/speed/metabuli-db-11101110111-s7 \
        sp-in \
        --threads 64 \
        --min-cons-cnt 2 \
        --max-shift 8 > /mnt/scratch/jaebeom/speed/metabuli-db-11101110111-s7/sp-in-run_${i}.log
done

for i in {1..5}; do
    echo "Run $i "
    ~/dev/Metabuli/release/src/metabuli classify \
        /mnt/scratch/jaebeom/speed/sp-in_1.fna \
        /mnt/scratch/jaebeom/speed/sp-in_2.fna \
        /mnt/scratch/jaebeom/speed/metabuli-db-11101110111 \
        /mnt/scratch/jaebeom/speed/metabuli-db-11101110111 \
        sp-in \
        --threads 64 \
        --min-cons-cnt 2 \
        --max-shift 4 > /mnt/scratch/jaebeom/speed/metabuli-db-11101110111/sp-in-run_${i}.log
done