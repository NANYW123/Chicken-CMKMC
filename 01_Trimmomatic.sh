#!/bin/bash

### Remove adapter and low quality sequence by trimmomatic

java -jar ${Trimmomatic} PE -threads 10 \
	-trimlog ${CleanData}/${sampleID}.logfile \
	${Rawdata}/${sampleID}_R1.fq.gz \
	${Rawdata}/${sampleID}_R2.fq.gz \
	01_CleanData/${sampleID}_clean_R1.fq \
	01_CleanData/${sampleID}_clean_unpaired_R1.fq \
	01_CleanData/${sampleID}_clean_R2.fq \
	01_CleanData/${sampleID}_clean_unpaired_R2.fq \
	ILLUMINACLIP:${adapters}:2:30:10  SLIDINGWINDOW:15:30 MINLEN:110 TRAILING:30 AVGQUAL:30


