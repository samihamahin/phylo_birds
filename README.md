# Phylogenetic Analysis of Migratory Birds 

## Background

In Rushing et al., the effects of climate change were studied through analyzing the shifts in habitat of resident birds and temperate and neotropical migratory birds. It was found that these bird’s habitats were affected by climate change in different capacities. This phenomenon could be induced by climate change, but could also be due to other factors such as inherited migratory behaviors. Multiple independent evolution events have been observed in neotropical migratory birds in North America as their populations have declined dramatically and their capacity to adapt and colonize has been severely affected and completely different from that of their ancestor’s shared migration type. Currently, there is no comprehensive phylogenetic analysis for the different migratory behaviors of the resident birds and temperate and neotropical migratory birds in order to determine if these behaviors had evolved convergently or from a common ancestor. We believe looking at the phylogenetic relationship of the different species of migratory birds would provide insight into the evolutionary relationships of migrant birds compared to resident birds. This could provide further evidence that either homology or convergent evolution has a direct impact on migratory behavior by showing how migratory birds, specifically, long range migratory birds have evolved more than resident birds in terms of migratory behavior.  

## Research Question, Hypothesis, & Predictions: 

This experiment will look into the phylogenetic relationships of thirty-two bird species studied in the published Rushing et al. PNAS science article to see if migratory bird behavior has evolved once or multiple times in the phylogeny. The three migratory behaviors that will be analyzed are temperate and neotropical migratory behaviors and resident behaviors. The hypothesis of this experiment is that each of the migratory behaviors evolved once in the phylogeny. This would be demonstrated by grouping each of the migratory behaviors into their own separate monophyletic evolutionary groups. It can be predicted that there is homology in the migratory behaviors that are grouped together. The null hypothesis for this experiment is that migratory behavior evolved multiple times throughout the phylogeny. This would be seen if the three migratory behaviors are dispersed throughout the whole phylogeny. If this hypothesis were true, it can be stated that there is no homology in the entire tree when it comes to migratory behavior, and that it is convergent evolution at work. This is because the birds could’ve evolved the same behavior without having the same common ancestors. The neotropical birds are expected to exhibit the most migration behavior evolutions due to long-distance migration, while resident birds will show essentially no change because there is no need to adapt due to the lack of long-distance migration.


## Methods

### Data Acquisition and Cleaning

The bird species table of different American migratory birds from the Rushing et. al. research (Table 1. Species Attributes) was used for determining species of interest. All of the 32 species in the table were used. The NCBI Genbank Accession ID numbers for each species were found for the marker genes COI and Cytochrome-B (Cytb). These two marker genes were chosen because of their use in many avian phylogenetic studies (Lavina et al., 2015). Entrez-direct was used to generate fasta files that included all of the sequences for COI and Cytb for each of the species. 

### Multiple Sequence Alignment

The software MAFFT was used to run multiple sequence alignment individually on each of the fasta files with all of the sequences for all of the species. Because COI and Cytb are both mitochondrial marker genes which has circular DNA, concatenating the two sequences would lead to a richer representation of data. In order for the resulting sequences to have the same length, MEGA11 was used to visualize the sequences and trim them to have the same length. The edited sequences were saved into a Python dictionary which was used to create a new fasta file with concatenated sequences. 

### Phylogenetic Tree Construction

The R packages ape and phyML were used to construct the phylogenetic tree based on maximum likelihood. The R package phytools were used to plot the trees. In order to reroot the tree, the closest living ancestor to birds, the American crocodile (Crocodylus acutus) was used (Stephens, 2014). The discrete characteristics of migratory behaviors (resident, neotropical, and temperate) were then mapped onto the tree. 

## Results

The phylogenetic trees generated were completed using 3 different combinations of marker genes. The resulting trees are the COI and Cytb marker genes concatenated sequence tree (Fig. A), COI marker gene tree (Fig. C), and the Cytb marker gene tree (Fig. D). The phylogenetic tree generated with the concatenated sequence of the COI and Cytb genes (Fig. A) was distorted. Because of this, the Vireo griseus species causing the long branching to occur in Figure A was removed in a supplementary tree in order to show the relationships between the species more clearly (Fig. B). When looking at the concatenated sequence COI and Cytb gene phylogenetic tree (Fig. A), it is apparent that there is less common ancestry between the two genetic markers due to the distorted evolutionary tree. Even so, all of the trees show that resident and temperate and neotropical migratory types evolved independently of one another. Furthermore, there are no shared common ancestors that passed on the migratory traits to specific clades. These results point to convergent evolution being the cause of migratory behaviors evolving more than once in the phylogeny, as indicated by the presence of mixed migratory behaviors within the clades rather than simply one migratory behavior clustered together.   

## Figure Tables 

### Phylogenetic Tree from Concatenated Sequences of COI and Cytb marker genes

### Phylogenetic Tree for COI and Cytb marker genes (without Vireo griseus) 

### Phylogenetic Tree for COI marker gene

### Phylogenetic Tree for Cytb marker gene 

## Discussion

According to the findings, the migratory behavior of resident and temperate and neotropical migratory birds has evolved several times across their phylogeny. It was observed that migratory behaviors evolved several times when looking at the COI and Cytb marker genes concatenated sequence tree (Fig. A), COI marker gene tree (Fig. C), and the Cytb marker gene tree (Fig. D). These findings are supported by the fact that the groups of bird species in the same clades do not have the same migratory behaviors across the whole evolutionary tree in all three of the phylogenetic trees. This is significant because none of the clades were composed of only one specific migration behavior. It is clear that convergent evolution occurred and caused this phenomenon. All three evolutionary trees demonstrated that migration behavior evolved independently. Convergent evolution allowed these migratory birds to develop migratory patterns that did not exist in their last common ancestor. As a result, the null hypothesis is correct in that migratory behaviors in migratory birds evolved several times. The phylogenetic tree was attempted to be reconstructed using the concatenated sequences of COI and Cytb (Fig. A), however it was unsuccessful due to negative or zero branch lengths. As a result of this, a new evolutionary tree was created for the marker genes of COI and Cytb without Vireo griseus (Fig. B). The Vireo griseus species was removed from the phylogenetic tree because its long branch disfigured the tree.

## Challenges

Ancestral reconstruction of the phylogenetic tree with the concatenated sequence of COI and Cytb (Fig. A) was attempted but had failed because of negative or zero branch lengths. The tree was then trimmed to not include the branch of Vireo griseus (Fig. B). This trimmed tree was believed to have non zero branch lengths but then after running ancestral reconstruction functions on the trimmed tree, the same error of negative or zero branch lengths arose again. Because of this, ancestral reconstruction of the migratory birds could not be added to the figures because of these negative or zero branch lengths. 
