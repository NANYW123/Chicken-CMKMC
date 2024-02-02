
#Here, we build a high-quality constructed a chicken multi‑kingdom microbiome catalog (CMKMC) including 18,201 bacterial, 225 archaeal, and 33,411 viral genomes.

###  The multi-kingdom microbiome catalog of the chicken gastrointestinal tract

This directory contains scripts related to the manuscript "The multi-kingdom microbiome catalog of the chicken gastrointestinal tract". Before running, you must ensure that all required softwares and databases are installed successfully.

How to Reference?
If you have used this script in your research, please use the following link for references to our script: https://github.com/NANYW123/Chicken-CMKMC.git. Please also cite the corresponding software.

Software and database installation
Most of the softwares can be installed through conda. The installation method refer to the manual of each software. The following published software is used in our script. The name, version and availablity of the software are as follows:

Software	Availability
Trimmomaticv 0.39	(https://github.com/usadellab/Trimmomatic)

Bowtie2 v2.3.4 (https://sourceforge.net/projects/bowtie-bio/files/bowtie2/2.3.0/)

MEGAHIT v1.2.9 (https://github.com/voutcn/megahit)

metaWRAP v1.3.2 (https://github.com/bxlab/metaWRAP)

CheckM v1.2.2 (https://github.com/Ecogenomics/CheckM)

dRep v3.4.2 (https://github.com/MrOlm/drep)

GTDB-Tk v.1.4.1 (https://gtdb.ecogenomic.org/) 

CompareM v0.1.2 (https://github.com/dparks1134/CompareM) 

PhyloPhlAn v3.0.60 (https://github.com/biobakery/phylophlan)

VirSorter2 v2.2.4 (https://bitbucket.org/MAVERICLab/virsorter2)

CheckV v1.0.1 (https://bitbucket.org/berkeleylab/checkv/src/master/)

VIBRANT v1.2.1 (https://github.com/AnantharamanLab/VIBRANT)

Prodigal v2.6.3 (https://github.com/hyattpd/Prodigal)

vConTACT2 (https://bitbucket.org/MAVERICLab/vcontact2/src/master/)

iPHoP v1.3.3 (https://bitbucket.org/srouxjgi/iphop/src/main/)

ABRicate v0.9.7 (https://github.com/tseemann/abricate/)

PlasmidFinder v2.0.1 (https://github.com/kcri-tz/plasmidfinder) 

ResFinder v4.0 (https://bitbucket.org/genomicepidemiology/resfinder/src/master/)

DRAM (https://github.com/shafferm/DRAM) 

CAZyme (http://www.cazy.org/)

VOG (https://vogdb.org/)  

iTOL v6.1.1 (https://itol.embl.de/)

 
Note: The version are only the version used in the paper, most of database are constantly updated.
OVERVIEW OF PIPELINE
The scripts of whole-genome sequencing analysis are placed in "Pipeline" directory. 

Part1: 01_Trimmomatic.sh

Part2: 02_Removed_Host.sh

Part3: 03_assembly-and-binning.sh

Part4: 04_virome.sh

Part5: 05_Virus taxonomy.sh

Part6: 06_Host prediction and AMG annotation.sh

Part7: 7_Taxonomic classification.sh

Part8: 08_Drep.sh

Part9: 09_Phylogenetic.sh

Part10: 10_Functional annotation.sh

Limitations
This workflow was designed specifically for "The multi-kingdom microbiome catalog of the chicken gastrointestinal tract"; editing and revisions might be required before applying to other projects.
