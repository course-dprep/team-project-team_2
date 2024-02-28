

#prepare data

#separate genre intp its own column

# Load required packages
library(tidyverse)
install.packages("tidyr")
library(tidyr)
install.packages("dplyr")
library(dplyr)
####

#create a dummy variable for each genre
merged_lists$comedy <- ifelse(grepl("comedy", merged_lists$genres, ignore.case = TRUE), 1, 0)
merged_lists$documentary <- ifelse(grepl("documentary", merged_lists$genres, ignore.case = TRUE), 1, 0)
merged_lists$animation <- ifelse(grepl("animation", merged_lists$genres, ignore.case = TRUE), 1, 0)
merged_lists$romance <- ifelse(grepl("romance", merged_lists$genres, ignore.case = TRUE), 1, 0)
merged_lists$news <- ifelse(grepl("news", merged_lists$genres, ignore.case = TRUE), 1, 0)
merged_lists$sport <- ifelse(grepl("sport", merged_lists$genres, ignore.case = TRUE), 1, 0)
merged_lists$horror <- ifelse(grepl("horror", merged_lists$genres, ignore.case = TRUE), 1, 0)
merged_lists$fantasy <- ifelse(grepl("fantasy", merged_lists$genres, ignore.case = TRUE), 1, 0)
merged_lists$crime <- ifelse(grepl("crime", merged_lists$genres, ignore.case = TRUE), 1, 0)
merged_lists$thriller <- ifelse(grepl("thriller", merged_lists$genres, ignore.case = TRUE), 1, 0)
merged_lists$mistery <- ifelse(grepl("mistery", merged_lists$genres, ignore.case = TRUE), 1, 0)
merged_lists$scifi <- ifelse(grepl("sci-fi", merged_lists$genres, ignore.case = TRUE), 1, 0)

#calculate the average rating per genre --- does not work yet -- first also create dummy variable for years

# Calculate the sum of (averageRating * dummy) for each genre
sum_ratings <- sapply(names(merged_lists)[3:ncol(merged_lists)], function(comedy) {
  sum(merged_lists$averageRating * merged_lists$comedy)
})

# Calculate the count of observations where dummy = 1 for each genre
count_ones <- sapply(names(merged_lists)[3:ncol(merged_lists)], function(comedy) {
  sum(merged_lists$comedy)
})

# Calculate the average rating for each genre
avg_rating_by_genre <- sum_ratings / count_ones

view(avg_rating_by_genre)
