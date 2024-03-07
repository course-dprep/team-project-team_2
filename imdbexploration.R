library(tidyverse)

setwd("C:/dPrep/data/title.basics.tsv")

title_basics_data <- read_tsv('basic.tsv', n_max = 100)

title_ratings_data <- read_tsv('ratings.tsv', n_max = 100)

view(title_basics_data)
view(title_ratings_data)



# merge the two files
merged_lists <- merge(title_basics_data, title_ratings_data, by = "tconst", all = TRUE )

#filter for years
