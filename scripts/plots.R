install.packages("plotly")
library(dplyr)
library(ggplot2)
library(plotly)
library(reshape2)

blastq <- read.delim("analyses/Blastquery-GOslim.sorted", header = FALSE, sep = "\t")
write.csv(blastq, "/analyses/Blastquery-GOslim-sep.csv")

colnames(blastq)
#[1] "V1" "V2"

#add descriptive colnames
colnms <- c("Trinity_protein", "GOslim-term")
colnames(blastq) <- colnms

#write out and save more descriptive .csv
write.csv(blastq, "analyses/Blastquery-GOslim-sep.csv")

#find out how many GOslim terms there are
goslim <- unique(blastq$`GOslim-term`)
goslim
#14 unique terms

#list of unique terms
#[1] protein metabolism               cell cycle and proliferation    
#[3] cell organization and biogenesis death    
#[5] developmental processes          other biological processes   
#[7] RNA metabolism                   transport 
#[9] signal transduction              DNA metabolism                  
#[11] stress response                  other metabolic processes       
#[13] cell-cell signaling              cell adhesion 

#count how many times each GOslim occurs 

