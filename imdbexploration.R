library(tidyverse)

setwd("C:/Users/apper/OneDrive/MAy5b1/SkillsDaPr")

title_basics_data <- read_tsv('title.basics.tsv.gz', n_max = 100)

title_ratings_data <- read_tsv('title.ratings.tsv.gz', n_max = 100)

view(title_basics_data)
view(title_ratings_data)



# merge the two files
merged_lists <- merge(title_basics_data, title_ratings_data, by = "tconst", all = TRUE )

#filter for years
