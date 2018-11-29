install.packages("plotly")
library(dplyr)
library(ggplot2)
library(plotly)

blastq <- read.delim("analyses/Blastquery-GOslim.sorted", header = FALSE, sep = "\t")

write.csv(blastq, "/analyses/Blastquery-GOslim-sep.csv")
  
ggplot(blastq, aes(x = factor(1), fill=blastq$V2))+geom_bar(width = 1)+coord_polar("y")


