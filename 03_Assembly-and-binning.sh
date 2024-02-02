#!/bin/bash

### assembly

${metawrap assembly} -1 ${CleanData}/${SampleID}_final_R1.fastq.gz \
-2 ${CleanData}/${SampleID}_final_R2.fastq.gz \
-t 128 \
-m 300 \
-o ${Assembly}/${SampleID}_megahit

### binning

	metawrap binning -o ./INITIAL_BINNING/$i -t 128 -m 300 -a ./ASSEMBLY/$i/final_assembly.fasta --metabat2 ${CleanData}/${SampleID}_final_R*.fastq.gz
	
	metawrap binning -o ./INITIAL_BINNING/$i -t 128 -m 300 -a ./ASSEMBLY/$i/final_assembly.fasta --maxbin2 ${CleanData}/${SampleID}_final_R*.fastq.gz
		
	metawrap binning -o ./INITIAL_BINNING/$i -t 128 -m 300 -a ./ASSEMBLY/$i/final_assembly.fasta --concoct ${CleanData}/${SampleID}_final_R*.fastq.gz

### refine_binning

metawrap bin_refinement -o ./binning_refinement/$i -A ./INITIAL_BINNING/$i/metabat2_bins -B ./INITIAL_BINNING/$i/maxbin2_bins -C ./INITIAL_BINNING/$i/concoct_bins -t 128 -c 50 -x 10


###  BIN_REASSEMBLY

metawrap reassemble_bins -o ./BIN_REASSEMBLY/$i -1 ${CleanData}/${SampleID}_final_R1.fastq.gz -2 ${CleanData}/${SampleID}_final_R2.fastq.gz -c 50 -x 10 -b ./binning_refinement/$i/metawrap_50_10_bins -t 128 -m 300
