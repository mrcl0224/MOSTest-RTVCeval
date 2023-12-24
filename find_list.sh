#!/bin/bash
sets=(set1)

methods=(firstrec firstrt)
levels=(easy difficult)
patterns=(before after after2nd)

for set in ${sets[@]}; do
    for method in ${methods[@]}; do
        for level in ${levels[@]}; do
            for pattern in ${patterns[@]}; do
                find wav/$set -name "*.wav" | grep "${method}_${level}_${pattern}" > wav/$set/${method}_${level}_${pattern}.list
            done
        done
    done
done