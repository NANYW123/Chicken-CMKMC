#!/bin/bash

### Remove host and food sequence

#index of reference genome
${bowtie2_build} ${Ref} ./Ref/contamination_ref.db

#paired
${bowtie2} -x ./Ref/contamination_ref.db --very-sensitive -p 20 \
	-1 01_CleanData/${sampleID}_clean_R1.fq \
	-2 01_CleanData/${sampleID}_clean_R2.fq \
	--un-conc 02_Removed_Host/${sampleID}_paired_clean%.fq \
	--al-conc 02_Removed_Host/${sampleID}_paired_contam%.fq