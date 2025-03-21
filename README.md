# UO Lizard Project
Carter Alzamora, Julia Jones, Cameron Kunstadt

## Objective

Due to the nature of Direct RNA Nanopore Sequencing, RNA strands can be pushed through the pores too quickly one after the other, so much so that the end of one strand and the start of the next cannot be determined. The resulting data contains artificially long reads >300kb, and large amounts of Poly-A content. This can make be problematic downstream processing and analysis. This pipeline attempts to clean up some of those issues, while maintaining good quality reads and alignments.

## Tools

Required packaged for running: pandas, seaborn, samtools, minimap2, trimmomatic

## Use

ONT_RNA_pipeline.sh is the main pipeline, each path to your genome file, analysis file, and each script will need to be modified. The other scripts that are needed are NEW_POLY.py, filter_by_readsize.py, and filter_sam_by_readsize.py.

## Steps

1. Trimming
    - Trimmomatic is used for trimming poor quality regions
2. Split on PolyAs
    - A custom PolyA Splitting Script searching for long stretches of As in series, with an adjustable amount of non-As also permitted, when these locations are found, the read is split into two sections along that point 
3. Filter by read size
    - Before the initial alignment, this simple filtering script can filter the fastq file by readsize, its purpose is to disallow small reads (~<100bp) from downstream steps.
4. Initial Alignment
    - Minimap 2 is used with the following parameters
    - minimap2 -ax lr:hq -k 28 -N 5 -t 8 -c
5. Filter by read size
    - Filter by readsize again to remove and alignments that are too small
6. Samtools filtering
    - Secondary alignments are removed, and other low-quality alignments are also removed
7. Second Alignment
    -  Minimap 2 is used with the following parameters
    - minimap2 -ax lr:hq -k 28 -N 1 -t 8 -c
8. Samtools filtering
    - Same samtools filtering steps
9. FASTQ Conversion
    - SAM file is converted into a FASTQ file, and this is now used as your dataset

## Performance

A test dataset showed a reduction in PolyA content from 60% to 20%, and a moderate increase in primary and supplementary alignments. The resulting dataset will be much more accurate for initial comparisons and statistics of interests such as number of reads, average length etc. An ideal result of this pipeline would have each read be one high-quality unique RNA strand per read.
