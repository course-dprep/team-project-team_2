library(tidyverse)



title_basics_data <- read_tsv('title.basics.tsv.gz', n_max = 100)

title_ratings_data <- read_tsv('title.ratings.tsv.gz', n_max = 100)

view(title_basics_data)
view(title_ratings_data)

# List of file paths
file_paths <- c("title.basics.tsv.gz", "title.ratings.tsv.gz")

# Load the first 1000 rows of each TSV file into a list of data frames
data_list <- lapply(file_paths, function(file) {
  read_tsv(file, n_max = 1000)
})

view(data_list)
