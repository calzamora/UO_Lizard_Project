#!/bin/bash
#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH -c 10
#SBATCH --mem=128G
#SBATCH --nodes=5

conda activate lizard_env


fastqc -t 24 -o /projects/bgmp/shared/groups/2024/lizards/calz/big_fastqc \
    /projects/bgmp/shared/groups/2024/lizards/shared/nanopore_big/124_VP_NEO_LIVER_D547_polyA.dorado0.8.0.rna004_130bps_sup_v5.1.0.allReads.fastq.gz