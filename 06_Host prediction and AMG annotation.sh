#!/bin/bash

### iphop

iphop predict --fa_file ./step3-vs2-pass2/$i/final-viral-combined.fa --db_dir ./db/iphop_db/Sept_2021_pub_rw/ --out_dir step6-iphop_output/$i --num_threads 50 --min_score 90

### DRAM-v

# step 1 annotate

DRAM-v.py annotate -i vs2-pass2/for-dramv/final-viral-combined-for-dramv.fa -v vs2-pass2/for-dramv/viral-affi-contigs-for-dramv.tab -o dramv-annotate --skip_trnascan --threads 28 --min_contig_size 1000

#step 2 summarize anntotations

DRAM-v.py distill -i dramv-annotate/annotations.tsv -o dramv-distill
