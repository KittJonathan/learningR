# ggmsa package
# Last updated 2022-07-04

# http://yulab-smu.top/ggmsa/index.html

# Load packages ----

library(ggmsa)

# Quick example ----

protein_sequences <- system.file("extdata", "sample.fasta", package = "ggmsa")

ggmsa(msa = protein_sequences,
      start = 221,
      end = 280,
      char_width = 0.5,
      seq_name = TRUE) +
  geom_seqlogo() +
  geom_msaBar()