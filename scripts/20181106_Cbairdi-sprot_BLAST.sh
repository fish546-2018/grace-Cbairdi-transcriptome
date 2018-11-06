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
--blastn \
--query Trinity.fasta \ #OR do I have to rsync query.fa from owl/scaphapoda/grace/Crab-project/fasta_files/11012018_query_library01/query.fa
--db http://owl.fish.washington.edu/scaphapoda/grace/Crab-project/blastdb/uniprot_sprot \
--max_target_seqs 1 \
--outfmt 6 \
--num_threads 8 \
--out 1106-cbairdiblast-sprot.tab
--CPU 28