#read in cg-trinity-nt.tab from http://gannet.fish.washington.edu/seashell/bu-mox/analyses/1114b/cg-trinity-nt.tab

tax <- read.table("http://gannet.fish.washington.edu/seashell/bu-mox/analyses/1114b/cg-trinity-nt.tab", sep = "\t", header = FALSE)

colnames(tax)
#[1] "V1" "V2" "V3" "V4" "V5" "V6" "V7" "V8"

#need to add descriptive col names (don't know what columns 2-5 are... but I'm focusing on common name for my visual)
colnms <- c("Trinity_protein", "V2", "V3","V4","V5", "genus_speces","common_name", "Domain")
colnames(tax) <- colnms


#Make a pie chart to include the breakdown of the "crab-related" genus -es

#find how many genuses are from crab
crab <- length(grep("crab", tax$common_name))

#find out how many of species names include "Chionoecetes"
length(grep("Chionoecetes", tax$genus_speces))
#45 are from Chionoecetes genus