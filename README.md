### grace-Cbairdi-transcriptome

# Effects of temperature and _Hematodinium sp._ - infection (Bitter Crab Syndrome) on Southeast Alaskan Tanner Crabs (_Chionoecetes bairdi_)

# The problem
SE Alaskan Tanner crabs support a $21 million fishery (2014). However, their marketability has been decreasing due to an increasing prevalence of parasitic dinoflaggelate _Hematodinium sp._-infection (Bitter Crab Syndrome). While it is unknown whether this syndrome results in fatality or how it is transmitted, it is known that it causes the crabs' meat to become bitter in taste and chalky in texture. The prevalence of the disease is likely to increase as the water temperature i

## Goals
This project aims to use bioinformatic tools to identify genes of SE Alaskan Tanner crabs (_Chionoecetes bairdi_) that are involved in immunity and temperature stress response. 

# Data and analysis
RNA sequence data from a pooled _C. bairdi_ hemolymph sample was received from the Northwest Genomics Centeer (NWGC) at the University of Washington. The data came in the form of .fastq files with sequences reads for both the forward and reverse transcripts of the pooled sample.

The sequence reads were assmebled into a transcriptome using Trinity. The assembled transcriptome was compared to uniprot/swissprot (database of known proteins) and a nucleotide database with taxonomy information using BLAST (Basic Local Alignment Search Tool). The BLAST output from the comparison with the protein database was annotated using GO (gene ontology) terms, which tells us what genes are present, and what their functions are. The BLAST output from the nucleotide taxonomy database was used to identify what was in the sample, and we found that _Hematodinium_ genetic material was present. 

# Products (Visualizations)

# Next Steps






## Repository structure and Contents
[analyses](https://github.com/fish546-2018/grace-Cbairdi-transcriptome/tree/master/analyses)
- output files from R, FastQC

[data](https://github.com/fish546-2018/grace-Cbairdi-transcriptome/tree/master/data)
- .fastq files from the _C. bairdi_ pooled RNA sample that was library-prepped and sequenced at the NWGC. 

[notebooks](https://github.com/fish546-2018/grace-Cbairdi-transcriptome/tree/master/notebooks)
- Jupyter notebooks used for analyses

[scripts](https://github.com/fish546-2018/grace-Cbairdi-transcriptome/tree/master/scripts)
- R scripts used for analyses, and .sh scripts for running jobs on Mox

## Project Timeline (FISH 546 Fall Quarter 2018)
- Week 4: FastQC files and assemble using Trinity on Mox; set up script for running BLAST once assembly is complete
- Week 5: Run BLAST, and classify according to biological function using GO terms and GO Slim terms 
