library(tidyverse)

setwd("C:/Users/apper/OneDrive/MAy5b1/SkillsDaPr")

title_basics_data <- read_tsv('title.basics.tsv.gz')

title_ratings_data <- read_tsv('title.ratings.tsv.gz')

head(title_basics_data)
head(title_ratings_data)
table(title_basics_data$startYear)

#filter for years
filtered_title_basics <- title_basics_data %>% filter(startYear >= 2000 & startYear <= 2023)


# merge the two files
merged_lists <- filtered_title_basics %>% left_join(title_ratings_data, by= 'tconst')

#remove NA from the ratings collumn
movies <- merged_lists %>% na.omit(merged_lists$averageRating)

#final list is called movies for further data wranglin