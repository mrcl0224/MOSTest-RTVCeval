#!/bin/bash
sets=(set1 set2 set3 set4 set5)

methods=(firstrec firstrt firstrec_free firstrt_free)
levels=(easy difficult)
patterns=(before after after2nd)

for set in ${sets[@]}; do
    for method in ${methods[@]}; do
        for level in ${levels[@]}; do
            for pattern in ${patterns[@]}; do
                rm wav/$set/${method}_${level}_${pattern}.list
                find wav/$set -name "*.wav" | grep "${method}_${level}_${pattern}"/ > wav/$set/${method}_${level}_${pattern}.list
            done
        done
    done
done

for set in ${sets[@]}; do
    find wav/$set -name "*.wav" | grep "natural" > wav/$set/natural.list
done