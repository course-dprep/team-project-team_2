#install packages
install.packages("tidyverse")
install.packages("dplyr")
install.packages("readr")
install.packages("tidyr")
install.packages("ggplot2")
library(tidyverse)
library(dplyr)
library(ggplot2)
library(tidyr)

## Get the data from the URLs
options(timeout = max(1000, getOption("timeout")))
urls <- c(
  'https://datasets.imdbws.com/title.basics.tsv.gz',
  'https://datasets.imdbws.com/title.ratings.tsv.gz'
)

## Namin the URL's
names <- c("Basics", "Ratings")

for (i in 1:length(urls)) {
  download.file(urls[i], paste0("../../data/", names[i], ".tsv.gz"), mode = "wb")
}