library(ggplot2)
library(dplyr)
library(tidyr)
library(tibble)
library(genefilter)

setwd("/Users/dimitras/Box Sync/RNA-Seq/pseudoalign_benchmark_results")

#Liv1_3
counts = read.delim("Liv1_3.sim.kalli.cuff.counts.tsv")
head(counts)

#ranks
counts$kalli_rank = (counts$kalli_est_count + 20) / (counts$sim_count + 20)
counts$cuff_rank = (counts$cuff_count + 20) / (counts$sim_count + 20)
head(counts)

#scatterplot
counts %>%
  ggplot(aes(x = log(kalli_rank), y = log(cuff_rank))) +
  geom_point(shape=1) +
  geom_smooth(method = lm, se=TRUE) +
  theme_bw(base_size = 50)
ggsave("plots/Liv1_3.sim.kalli.cuff.counts_scatterplot.pdf", height = 40, width = 40, units ="cm")


####################################################################################################

#Liv1_4
counts = read.delim("Liv1_4.sim.kalli.cuff.counts.tsv")
head(counts)

#ranks
counts$kalli_rank = (counts$kalli_est_count + 20) / (counts$sim_count + 20)
counts$cuff_rank = (counts$cuff_count + 20) / (counts$sim_count + 20)
head(counts)

#scatterplot
counts %>%
  ggplot(aes(x = log(kalli_rank), y = log(cuff_rank))) +
  geom_point(shape=1) +
  geom_smooth(method = lm, se=TRUE) +
  theme_bw(base_size = 50)
ggsave("plots/Liv1_4.sim.kalli.cuff.counts_scatterplot.pdf", height = 40, width = 40, units ="cm")
