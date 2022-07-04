# rBLAST package
# Last updated 2022-07-04

# https://github.com/mhahsler/rBLAST/

# Load packages ----

library(rBLAST)

# Tutorial ----

# download the 16S microbial data base from NCBI

microbial_16s <- download.file("https://ftp.ncbi.nlm.nih.gov/blast/db/16S_ribosomal_RNA.tar.gz",
                               "../databases/16S_ribosomal_RNA.tar.gz", mode = "wb")

dir.create("../databases/16SMicrobialD8")

untar("../databases/16S_ribosomal_RNA.tar.gz", exdir = "../databases/16SMicrobialD8/")
