#!/bin/bash
## Job Name
#SBATCH --job-name=20181024_Cbairdi_trinity_01
## Allocation Definition 
#SBATCH --account=srlab
#SBATCH --partition=srlab
## Resources
## Nodes 
#SBATCH --nodes=1   
## Walltime (days-hours:minutes:seconds format)
#SBATCH --time=90:30:00
## Memory per node
#SBATCH --mem=500G
## Specify the working directory for this job
#SBATCH --workdir=/gscratch/srlab/graceac9/analyses/1024

# Load Python Mox module for Python module availability

module load intel-python3_2017

# Custom PATH

export PATH="$PATH:\
/gscratch/srlab/programs/bowtie2-2.3.4.1-linux-x86_64:\
/gscratch/srlab/programs/anaconda3/bin/cutadapt:\
/gscratch/srlab/programs/FastQC:\
/gscratch/srlab/programs/jellyfish-2.2.10/bin:\
/gscratch/srlab/programs/salmon-0.11.2-linux_x86_64/bin:\
/gscratch/srlab/programs/samtools-1.9"

/gscratch/srlab/programs/trinity/Trinity \
--seqType fq \
--max_memory 100G \
--left /gscratch/srlab/graceac9/data/304428_S1_L001_R1_001.fastq,\
/gscratch/srlab/graceac9/data/304428_S1_L002_R1_001.fastq \
--right /gscratch/srlab/graceac9/data/304428_S1_L001_R2_001.fastq,\
/gscratch/srlab/graceac9/data/304428_S1_L002_R2_001.fastq \
--trimmomatic \
--CPU 28