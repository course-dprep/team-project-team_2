#prepare data
movies <- movies %>% select(!endyear)
movies <- movies %>% select(!isAdult)

#separate genre intp its own column

# Load required packages

install.packages("tidyr")

install.packages("dplyr")

install.packages("ggplot2")


library(ggplot2)
library(dplyr)
library(tidyr)
library(tidyverse)
####

#create a dummy variable for each genre
movies$comedy <- ifelse(grepl("comedy", movies$genres, ignore.case = TRUE), 1, 0)
movies$documentary <- ifelse(grepl("documentary", movies$genres, ignore.case = TRUE), 1, 0)
movies$animation <- ifelse(grepl("animation", movies$genres, ignore.case = TRUE), 1, 0)
movies$romance <- ifelse(grepl("romance", movies$genres, ignore.case = TRUE), 1, 0)
movies$news <- ifelse(grepl("news", movies$genres, ignore.case = TRUE), 1, 0)
movies$sport <- ifelse(grepl("sport", movies$genres, ignore.case = TRUE), 1, 0)
movies$horror <- ifelse(grepl("horror", movies$genres, ignore.case = TRUE), 1, 0)
movies$fantasy <- ifelse(grepl("fantasy", movies$genres, ignore.case = TRUE), 1, 0)
movies$crime <- ifelse(grepl("crime", movies$genres, ignore.case = TRUE), 1, 0)
movies$thriller <- ifelse(grepl("thriller", movies$genres, ignore.case = TRUE), 1, 0)
movies$mistery <- ifelse(grepl("mistery", movies$genres, ignore.case = TRUE), 1, 0)
movies$scifi <- ifelse(grepl("scifi", movies$genres, ignore.case = TRUE), 1, 0)


# List of years
years <- c(2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021, 2022, 2023) 

# List of genres
genre <- c("comedy", "documentary", "animation", "romance", "news", "sport", "horror", "fantasy", "crime", "thriller", "mistery", "scifi")

# Initialize an empty list to store the results
average_ratings_per_year <- list()

# Loop over years
for (year in years) {
  # Filter data for the current year
  filtered_data <- movies %>%
    filter(startYear == year)
  
  # Initialize an empty list to store average ratings for each genre
  average_ratings <- list()
  
  # Loop over genres
  for (g in genre) {
    # Calculate mean rating for the current genre only if the dummy variable is 1
    mean_rating <- mean(filtered_data$averageRating[filtered_data[[g]] == 1], na.rm = TRUE)
    # Add mean rating to the list of average ratings for the current year
    average_ratings[[g]] <- mean_rating
  }
  
  # Add average ratings for the current year to the list
  average_ratings_per_year[[as.character(year)]] <- average_ratings
}

# Accessing average ratings for a specific year and genre
# For example, to access the average rating for "comedy" in the year 2000
avg_rating_2000_comedy <- average_ratings_per_year[["2000"]][["comedy"]]

# Convert the nested list structure into a data frame
average_ratings_df <- do.call(rbind, lapply(names(average_ratings_per_year), function(year) {
  data.frame(
    Year = rep(year, length(genre)),
    Genre = genre,
    AverageRating = unlist(average_ratings_per_year[[year]])
  )
}))

# Print the resulting data frame
print(average_ratings_df)

# Create graph to visualize data
# Convert Year to a factor to preserve ordering on x-axis
average_ratings_df$Year <- as.factor(average_ratings_df$Year)

# Plot the variation of ratings for each genre over the years
ggplot(average_ratings_df, aes(x = Year, y = AverageRating, color = Genre, group = Genre)) +
  geom_line() +
  geom_point() +
  labs(x = "Year", y = "Average Rating", title = "Variation of Ratings by Genre Over Years") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
