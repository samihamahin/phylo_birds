library(phytools)

coi_tree <- read.newick("coi_bird.phy_phyml_tree.txt")
cytb_tree <- read.newick("cytb_bird.phy_phyml_tree.txt")
coi_cytb_tree <- read.newick("coi_cytb_bird.phy_phyml_tree.txt")

plotTree(coi_tree, ftype="i",fsize=0.7, lwd=2)
plotTree(cytb_tree, ftype="i",fsize=0.7, lwd=2)
plotTree(coi_cytb_tree, ftype="i",fsize=0.7, lwd=2)

View(coi_tree$tip.label)