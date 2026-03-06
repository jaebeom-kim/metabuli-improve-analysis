#!/bin/bash

QUERY1=$1
QUERY2=$2
JOB_NAME=$3
THREADS=$4

if [ -z "$QUERY1" ] || [ -z "$QUERY2" ] || [ -z "$JOB_NAME" ] || [ -z "$THREADS" ]; then
    echo "Usage: $0 <query1.fastq> <query2.fastq> <job_name> <threads>"
    exit 1
fi

# Centrifuger
CENTRIFUGER_DB="/fast/jaebeom/benchmark/gtdb-genomes/centrifuger-db"
~/bin/centrifuger-1.1.0/centrifuger \
    -x ${CENTRIFUGER_DB}/centrifuger \
    -1 $QUERY1 \
    -2 $QUERY2 \
    -t $THREADS \
    -k 1 > ${CENTRIFUGER_DB}/${JOB_NAME}_centrifuger_results.tsv

# Kraken2
KRAKEN2_DB="/fast/jaebeom/benchmark/gtdb-genomes/kraken2db"
~/bin/kraken2-2.17.1/kraken2 \
    -db $KRAKEN2_DB \
    --threads $THREADS \
    --report ${KRAKEN2_DB}/${JOB_NAME}_kraken2_report.tsv \
    --paired \
    $QUERY1 $QUERY2 > ${KRAKEN2_DB}/${JOB_NAME}_kraken2_results.tsv

# Kraken2 X
KRAKEN2X_DB="/fast/jaebeom/benchmark/gtdb-genomes/kraken2x-db"
~/bin/kraken2-2.17.1/kraken2 \
    -db $KRAKEN2X_DB \
    --threads $THREADS \
    --report ${KRAKEN2X_DB}/${JOB_NAME}_kraken2x_report.tsv \
    --paired \
    $QUERY1 $QUERY2 > ${KRAKEN2X_DB}/${JOB_NAME}_kraken2x_results.tsv

# Kaiju
KAIJU_DB="/fast/jaebeom/benchmark/gtdb-genomes/kaiju-db/"
KAIJU_TREE="/fast/jaebeom/benchmark/gtdb-genomes/kaiju-db/nodes.dmp"

~/bin/kaiju-1.10.1/bin/kaiju \
    -t $KAIJU_TREE \
    -f $KAIJU_DB/proteins.fmi \
    -i $QUERY1 -j $QUERY2 \
    -z $THREADS \
    -o ${KAIJU_DB}/${JOB_NAME}_kaiju_results.tsv

echo "${CENTRIFUGER_DB}/${JOB_NAME}_centrifuger_results.tsv" >> ${JOB_NAME}_results_files.txt
echo "${KRAKEN2_DB}/${JOB_NAME}_kraken2_results.tsv" >> ${JOB_NAME}_results_files.txt
echo "${KRAKEN2X_DB}/${JOB_NAME}_kraken2x_results.tsv" >> ${JOB_NAME}_results_files.txt
echo "${KAIJU_DB}/${JOB_NAME}_kaiju_results.tsv" >> ${JOB_NAME}_results_files.txt