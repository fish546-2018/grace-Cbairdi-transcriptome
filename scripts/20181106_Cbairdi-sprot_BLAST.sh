#!/bin/bash
## Job Name
#SBATCH --job-name=20181106_Cbairdi_blast_01
## Allocation Definition 
#SBATCH --account=srlab
#SBATCH --partition=srlab
## Resources
## Nodes 
#SBATCH --nodes=1   
## Walltime (days-hours:minutes:seconds format)
#SBATCH --time=3-20:30:00
## Memory per node
#SBATCH --mem=100G
##turn on e-mail notification
#SBATCH --mail-type=ALL
#SBATCH --mail-user=graceac9@uw.edu
## Specify the working directory for this job
#SBATCH --workdir=/gscratch/srlab/graceac9/analyses/1106-Cb-sprot-blast

# Load Python Mox module for Python module availability

module load intel-python3_2017


/gscratch/srlab/programs/ncbi-blast-2.6.0+ \
--blastn \
--query /gscratch/srlab/graceac9/query/library01/query.fa \
--db /gscratch/srlab/graceac9/blastdb/uniprot_sprot/blastdb/uniprot_sprot \
--max_target_seqs 1 \
--outfmt 6 \
--num_threads 28 \
--out 1106-cbairdiblast-sprot.tab
--CPU 28
