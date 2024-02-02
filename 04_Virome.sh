#!/bin/bash

###  virsorter2

 virsorter run -w ./step1-virsorter2_result/$i -i ${Assembly}/${i}_megahit/ --include-groups "dsDNAphage,ssDNA" -j 64 --min-length 5000 --min-score 0.8 --rm-tmpdir --viral-gene-required all

###  checkv

checkv end_to_end ./step1-virsorter2_result/$i/final-viral-combined.fa ./step2-checkv_result/$i -t 64 -d ./checkv-db-v1.4

###  virsorter2

cat ./step2-checkv_result/$i/proviruses.fna ./step2-checkv_result/$i/viruses.fna > ./step2-checkv_result/$i/combined.fna

virsorter run -w ./step3-vs2-pass2/$i -i ./step2-checkv_result/$i/combined.fna --include-groups "dsDNAphage,ssDNA" -j 96 --min-length 5000 --min-score 0.8 all --rm-tmpdir --viral-gene-required --exclude-lt2gene --prep-for-dramv --seqname-suffix-off --viral-gene-enrich-off

###  vibrant

python3 VIBRANT_run.py -no_plot -virome -t 40 -i ./vOTU.fa -folder ./vibrant_out -t 64