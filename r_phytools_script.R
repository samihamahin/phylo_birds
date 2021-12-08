library(phytools)
library(ape)

coi_tree <- read.newick("coi_bird.phy_phyml_tree.txt")
cytb_tree <- read.newick("cytb_bird.phy_phyml_tree.txt")
coi_cytb_tree <- read.newick("coi_cytb_bird.phy_phyml_tree.txt")

plotTree(coi_tree, ftype="i",fsize=0.9, lwd=2)
plotTree(cytb_tree, ftype="i",fsize=0.7, lwd=2)
plotTree(coi_cytb_tree, ftype="i",fsize=0.7, lwd=2)

#Reroot Tree
View(coi_tree$tip.label)
coi_tree.r <- reroot(coi_tree, 8)

View(cytb_tree$tip.label)
cytb_tree.r <- reroot(cytb_tree, 5)

View(coi_cytb_tree$tip.label)
coi_cytb_tree.r <- reroot(coi_cytb_tree, 13)


#Mapping Discrete Characters onto Tree
migratory_data <- read.csv("migratory_type_bird.csv", row.names=1)

head(migratory_data)

fmode<-as.factor(setNames(migratory_data[,1],rownames(migratory_data)))

dotTree(coi_tree.r,fmode,colors=setNames(c("red","blue","orange"), c("resident","temperate", "neotropical")),ftype="i",fsize=0.8,lwd=2)
dotTree(cytb_tree.r,fmode,colors=setNames(c("red","blue","orange"), c("resident","temperate", "neotropical")),ftype="i",fsize=0.8,lwd=2)
dotTree(coi_cytb_tree.r,fmode,colors=setNames(c("red","blue","orange"), c("resident","temperate", "neotropical")),ftype="i",fsize=0.8,lwd=2)

#Dropping extraneous branch
tip<-c("Vireo_griseus")
coi_cytb_trimmed <- drop.tip(coi_cytb_tree.r, tip)
plotTree(coi_cytb_trimmed, ftype="i",fsize=0.8, lwd=2)
migratory_data_trim <- read.csv("migratory_type_bird_trimmed.csv", row.names=1)
fmode_trim <-as.factor(setNames(migratory_data_trim[,1], rownames(migratory_data_trim)))
dotTree(coi_cytb_trimmed,fmode_trim,colors=setNames(c("red","blue","orange"), c("resident","temperate", "neotropical")),ftype="i",fsize=0.8,lwd=2)


ERreconstruction <- ace(fmode_trim, coi_cytb_trimmed, type="discrete", model="ER")
SYMreconstruction <- ace(char1, geotree, type="discrete", model="SYM")
ARDreconstruction <- ace(char1, geotree, type="discrete", model="ARD")