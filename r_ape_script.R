library(ape)

cytb_ <- read.dna("align_cytb_bird_trimmed.fas", format="fasta")
coi_ <- read.dna("align_coi_bird_trimmed.fas", format="fasta")
coi_cytb_ <- read.dna("align_coi_cytb_bird_trimmed.fas", format="fasta")

write.dna(coi_, "coi_bird.phy", format="interleaved", nbcol=-1,colsep="")
write.dna(cytb_, "cytb_bird.phy", format="interleaved", nbcol=-1,colsep="")
write.dna(coi_cytb_, "coi_cytb_bird.phy", format="interleaved", nbcol=-1,colsep="")