# Setup
library(tidyverse)

#setwd("C:/dPrep/data/title.basics.tsv")

title_basics_data <- read_tsv('title.basics.tsv.gz')

title_ratings_data <- read_tsv('title.ratings.tsv.gz')


# merge the two files
merged_lists <- filtered_title_basics %>% left_join(title_ratings_data, by= 'tconst')

#remove NA from the ratings collumn
movies <- merged_lists %>% na.omit(merged_lists$averageRating)

#final list is called movies for further data wranglin
