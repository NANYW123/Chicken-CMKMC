#!/bin/bash

### gtdbtk

gtdbtk classify_wf --genome_dir ./dereplicated_genomes --out_dir ./gtdb_taxonomic_annotation-result --extension fna --prefix ${sample_name}_gtdbtk --cpus 50

### comparem 

comparem aai_wf --cpus 50 ./dereplicated_genomes/ comparem-result-drep