#!/bin/bash

### vcontact2

vcontact2 --raw-proteins ./vOTU.phages_combined-new.faa --rel-mode 'Diamond' --proteins-fp ./viral_genomes_g2g.csv --db 'ProkaryoticViralRefSeq94-Merged' --pcs-mode MCL --vcs-mode ClusterONE --c1-bin ./cluster_one-1.0.jar --threads 128 --output-dir ./vContact2

### genomad

genomad end-to-end --cleanup --splits 8 ./vOTU.phages_combined.fna step9-genomad_output2 ./genomad_db --threads 128
