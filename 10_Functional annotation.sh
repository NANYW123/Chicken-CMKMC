#!/bin/bash


### DRAM

DRAM.py annotate -i './*.fa' -o DRAM-annotation-result --threads 54

### CARD

rgi main -i ./$faa -o CARD/$faa.card -n 6 --debug -t protein -a DIAMOND --clean

### ResFinder

python3 run_resfinder.py -ifa ${name} -s 'salmonella' -l 0.6 -t 0.9 --acquired -o ${name%.fasta}_result && mv ${name%.fasta}_result $path/ResFinder_result 

### Plasmidfinder

python plasmidfinder.py -i ${name} -l 0.6 -t 0.8 -p $path/plasmidfinder_db -o . -x && mv results_tab.tsv ${name%.fasta}_tab.tsv && mv ${name%.fasta}_tab.tsv $path/Plasmidfinder

### VFDB

abricate --db salmonella ${name} > ../${name}.tab && mv ../${name}.tab $path/VFDB_result