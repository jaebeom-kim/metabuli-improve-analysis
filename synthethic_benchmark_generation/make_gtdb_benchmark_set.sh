#!/bin/bash

genome_file_list=$1
taxdump_dir=$2
metabuli=$3

if [ -z "$genome_file_list" ] || [ -z "$taxdump_dir" ] || [ -z "$metabuli" ]; then
    echo "Usage: $0 <genome_file_list> <taxdump_dir> <metabuli>"
    exit 1
fi

if [ ! -f "$genome_file_list" ]; then
    echo "Genome file list not found: $genome_file_list"
    exit 2
fi

grep -v "ena-yuan" "$genome_file_list" | awk -F'/' '{print substr($NF, 1, 15)}' > "starting_genome_pool.txt"

"$metabuli" maketestsets --test-type gtdb starting_genome_pool.txt "$taxdump_dir" --random-seed 100

"$metabuli" makeInclusionTestQueries ./starting_genome_pool.txt.databaseAssembly gtdb-taxdump-R226/