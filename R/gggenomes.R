# gggenomes
# Last updated 2022-07-19
# https://thackl.github.io/gggenomes/index.html

# Install package ----

devtools::install_github("thackl/gggenomes")

# Load package ----

library(gggenomes)

# Create datasets ----

# seq track
s0 <- tibble(
  seq_id = c("a", "b"),
  length = c(600, 550)
)

# gene track
g0 <- tibble(
  seq_id = c("a", "a", "b"),
  start = c(50, 350, 80),
  end = c(250, 500, 450)
)

# link track
l0 <- tibble(
  seq_id = c("a", "a"),
  start = c(50, 400),
  end = c(250, 480),
  seq_id2 = c("b", "b"),
  start2 = c(80, 350),
  end2 = c(300, 430)
)

# Simple plot ----

p <- gggenomes(genes = g0, seqs = s0, links = l0)

p +
  geom_seq() +  # draw contig/chromosome lines
  geom_seq_label() +  # label each sequence
  geom_gene() +  # draw genes as arrow
  geom_link()  # draw some connections between syntenic regions

# Geoms and tracks ----

data(package = "gggenomes")

p <- gggenomes(
  genes = emale_genes,
  seqs = emale_seqs,
  feats = list(emale_tirs, emale_ngaros),
  links = emale_ava
)

p %>% track_info()

p +
  geom_seq() +
  geom_link() +
  # geom_seq_label() +
  geom_gene() +
  geom_feat() +
  geom_feat(data = feats(emale_ngaros),
            colour = "plum3")
