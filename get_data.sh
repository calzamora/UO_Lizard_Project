#!/bin/bash

#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH -c 8

###Download data from shared repo 

## genome fasta: 
#wget https://imbc1.imb.uni-mainz.de:8443/fileshare/PXFPxEz1Fzaw9Cap70iincormRVYaCaNzxjEs86ZPPVQMU8zon3JakfgXYJbcAC6/GENOME/#:~:text=a_neomexicanus_AspMarm2.0_AspAri2.0.fasta
wget https://imbc1.imb.uni-mainz.de:8443/fileshare/PXFPxEz1Fzaw9Cap70iincormRVYaCaNzxjEs86ZPPVQMU8zon3JakfgXYJbcAC6/GENOME/a_neomexicanus_AspMarm2.0_AspAri2.0.fasta
##genome gff:
#wget https://imbc1.imb.uni-mainz.de:8443/fileshare/PXFPxEz1Fzaw9Cap70iincormRVYaCaNzxjEs86ZPPVQMU8zon3JakfgXYJbcAC6/GENOME/a_neomexicanus_AspMarm2.0_AspAri2.0.gff

##Illumina R1
#wget https://imbc1.imb.uni-mainz.de:8443/fileshare/PXFPxEz1Fzaw9Cap70iincormRVYaCaNzxjEs86ZPPVQMU8zon3JakfgXYJbcAC6/ILLUMINA/imb_baumann_2023_03_21_D675_S21.R1.fastq.gz

##Illumina R2 
#wget https://imbc1.imb.uni-mainz.de:8443/fileshare/PXFPxEz1Fzaw9Cap70iincormRVYaCaNzxjEs86ZPPVQMU8zon3JakfgXYJbcAC6/ILLUMINA/imb_baumann_2023_03_21_D675_S21.R2.fastq.gz

##Nanopore v5 
#wget https://imbc1.imb.uni-mainz.de:8443/fileshare/PXFPxEz1Fzaw9Cap70iincormRVYaCaNzxjEs86ZPPVQMU8zon3JakfgXYJbcAC6/NANOPORE/122_VP_NEO_LIVER_TEST.dorado0.8.0.rna004_130bps_sup_v5.1.0.allReads.fastq.gz

##Nanopore v3
#wget https://imbc1.imb.uni-mainz.de:8443/fileshare/PXFPxEz1Fzaw9Cap70iincormRVYaCaNzxjEs86ZPPVQMU8zon3JakfgXYJbcAC6/NANOPORE/122_VP_NEO_LIVER_TEST.rna004_130bps_sup_v3.0.1.allReads.fastq.gz

## 5sums.txt
#wget https://imbc1.imb.uni-mainz.de:8443/fileshare/PXFPxEz1Fzaw9Cap70iincormRVYaCaNzxjEs86ZPPVQMU8zon3JakfgXYJbcAC6/md5sums.txt

## sharelink.txt 
#wget https://imbc1.imb.uni-mainz.de:8443/fileshare/PXFPxEz1Fzaw9Cap70iincormRVYaCaNzxjEs86ZPPVQMU8zon3JakfgXYJbcAC6/sharelink.txt