# Setup
library(tidyverse)
library(dplyr)

#Reading relevant datasets
title_basics_data <- read_tsv('title.basics.tsv.gz')
title_ratings_data <- read_tsv('title.ratings.tsv.gz')

#Filtering dataset
data.frame(title_basics_data)
#Filtering for year
filtered_title_basics <- title_basics_data[title_basics_data$startYear >= 2000 & title_basics_data$startYear <= 2023,]

#Filtering for movies
filtered_title_basics <- filtered_title_basics[filtered_title_basics$titleType == 'movie',]

#Filtering for number of votes >250
filtered_title_ratings_data <- title_ratings_data[title_ratings_data$numVotes > 1000,]

#merge the two files
merged_lists <- filtered_title_basics %>% left_join(filtered_title_ratings_data, by= 'tconst')

#remove NA from the ratings collumn
movies <- merged_lists %>% na.omit(merged_lists$averageRating)

#final list is called movies for further data wrangling


