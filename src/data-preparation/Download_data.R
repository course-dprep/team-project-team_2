install.packages("tidyverse", repos='http://cran.us.r-project.org')
install.packages("dplyr", repos='http://cran.us.r-project.org')
install.packages("readr", repos='http://cran.us.r-project.org')
library(tidyverse)
library(dplyr)

dir.create("../../data")

## Get the data from the URLs
options(timeout = max(1000, getOption("timeout")))
urls <- c(
  'https://datasets.imdbws.com/name.basics.tsv.gz',
  'https://datasets.imdbws.com/title.akas.tsv.gz',
  'https://datasets.imdbws.com/title.basics.tsv.gz',
  'https://datasets.imdbws.com/title.crew.tsv.gz',
  'https://datasets.imdbws.com/title.episode.tsv.gz',
  'https://datasets.imdbws.com/title.principals.tsv.gz',
  'https://datasets.imdbws.com/title.ratings.tsv.gz'
)

## Namin the URL's
names <- c("Names", "Akas", "Crew", "Episode", "Principals", "Ratings")

for (i in 1:length(urls)) {
  download.file(urls[i], paste0("../../data/", names[i], ".tsv.gz"), mode = "wb")
}