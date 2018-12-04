#read in cg-trinity-nt.tab from http://gannet.fish.washington.edu/seashell/bu-mox/analyses/1114b/cg-trinity-nt.tab

tax <- read.table("http://gannet.fish.washington.edu/seashell/bu-mox/analyses/1114b/cg-trinity-nt.tab", sep = "\t", header = FALSE)

colnames(tax)
#[1] "V1" "V2" "V3" "V4" "V5" "V6" "V7" "V8"

#need to add descriptive col names (still need to figure out what columns V2-V5 are... but for my visual I'm focusing on "genus_species" and "common_name")
colnms <- c("Trinity_protein", "V2", "V3","V4","V5", "genus_species","common_name", "Domain")
colnames(tax) <- colnms


#Make a pie chart to include the breakdown of the "crab-related" genus -es
#create subset of just the "genus_species" and the "common_name" columns
gsc <- subset(tax, select = c(genus_species, common_name))

#find unique species in "genus_species"
uspec <- unique(gsc$genus_species)
#458 unique species out of 2825 observations

#find number of unique common names
ucom <- unique(gsc$common_name)
#491 unique common names

#find number of common names including crab
crab <- length(grep("crab", gsc$common_name))
#509 proteins of scientific names that include "crab"
chiono <- length(grep("Chionoecetes", gsc$genus_species))
#40 species have "Chionoecetes" as a common name

#find out how many of species names include "Chionoecetes"
Chion <- length(grep("Chionoecetes", gsc$genus_species))
#45 proteins are from Chionoecetes genus

#find number of species that are associated with common names that include "crab"... how can i pull out a list of all the different crab species and make a pie chart of their relative proportions?


