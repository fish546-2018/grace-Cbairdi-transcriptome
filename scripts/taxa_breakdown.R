#read in cg-trinity-nt.tab from http://gannet.fish.washington.edu/seashell/bu-mox/analyses/1114b/cg-trinity-nt.tab

tax <- read.table("http://gannet.fish.washington.edu/seashell/bu-mox/analyses/1114b/cg-trinity-nt.tab", sep = "\t", header = FALSE)

colnames(tax)
#[1] "V1" "V2" "V3" "V4" "V5" "V6" "V7" "V8"

#need to add descriptive col names (don't know what columns 2-5 are... but I'm focusing on common name for my visual)
colnms <- c("Trinity_protein", "V2", "V3","V4","V5", "genus_species","common_name", "Domain")
colnames(tax) <- colnms

#I wish taxa output included phyla
#pull out all crab common names and Hemat common names, everything else is "other"... make pie chart.

#find how many unique common names there are
commonnames <- unique(tax$common_name)
numberofcnames <- length(commonnames)
numberofcnames
#491 total unique common names

#find how many of the common names include "crab"
length(grep("crab", tax$common_name))
#509 common names that include "crab". Therefore, 509 of total proteins are from crab species

#find number of common names with "Hematodinium"
length(grep("Hematodinium", tax$common_name))
#77 common names that contain "Hematodinium. Therefore, 77 of total proteins are from Hematodinium sp. 

#find number of unique proteins
uprot <- unique(tax$Trinity_protein)
uprot
#2564 unique proteins 

#number of proteins that are from other taxa (not "crab"-related or "Hematodinium")
2564-(77+509)
#1978

#make pie chart with percent of crab-related proteins and Hemat-related proteins, and "other"
#make dataframe for the crab-related, hematodinium-sp related, and other
dataframe <- data.frame(2564)
dataframe <- rep( c("crab-related", "Hematodinium-sp", "other"), c(509, 77, 1978))

#look at proportions 
paste(prop.table(table(dataframe))*100, "%", sep = "")
#"19.8517940717629%" "3.00312012480499%" "77.1450858034321%"

#create pie
pie <- pie(table(dataframe), labels = paste(round(prop.table(table(dataframe))*100), "%", sep = ""), col = cm.colors(3), main = "Taxa proportions - n: 2564")

#add legend
pie <- legend("topright", legend = c("crab-related", "Hematodinium-sp", "other"), fill = cm.colors(3), title = "Taxa Categories", cex = 0.65)

#save plot as image --> in "Plots" window, select "Export"

