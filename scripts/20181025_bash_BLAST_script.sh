#!/bin/bash
## Job Name
#SBATCH --job-name=20181024_Cbairdi_blast_01
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
##turn on e-mail notification
#SBATCH --mail-type=ALL
#SBATCH --mail-user=graceac9@uw.edu
## Specify the working directory for this job
#SBATCH --workdir=/gscratch/srlab/graceac9/analyses

# Load Python Mox module for Python module availability

module load intel-python3_2017


/gscratch/srlab/programs/ \ #need to find where blast lives on mox
--blastx \
--query query.fa \
--db #to uniprot location \
--max_target_seqs 1 \
--outfmt 6 \
--num_threads 8 \
--out 1025-cbairdiblast-sprot.tab
--CPU 28