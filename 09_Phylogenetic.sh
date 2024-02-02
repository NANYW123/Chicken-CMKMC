#!/bin/bash

### phylophlan

phylophlan -i ./dereplicated_genomes -d phylophlan --diversity high -f ./phylophlan_configs/supermatrix_aa.cfg --accurate -o ./phylophlan-result --force_nucleotides --nproc 64

