---
output:
  pdf_document: default
  html_document: default
---
# How do movie ratings differ per genre over time?

__Exploring Evolution of IMDB Ratings Across Genres: A Data Preparation Project__

## introduction
Ever wondered if certain types of movies tend to receive better ratings on IMDb? This study delves into that question, aiming to uncover patterns in movie ratings across different genres. We'll examine whether action movies, thrillers, or other genres consistently outperform others in terms of ratings. 


## Motivation


The filmmaking industry is a challeging market due to high and stiff competition. Understanding how different genres affect movie ratings could give filmmakers an competitive advantage. It's interesting to compare the average ratings of movies within a genre to see if their overall quality, as judged by the audiences, is increasing or decreasing. Recognizing trends in genres with consistently high, or increasing audience ratings provides a strong basis for making successful films. By using this information, filmmakers can tailor their  decisions about the choice of a certain genre to meet audience expectations and maximize the chances of success in a crowded market. 


## Method and results
#### **Methods**
To address the research questions, the analysis employed several approaches. Initially, plots were generated to visualize the average ratings across various movie genres spanning from 2000 to 2023. These plots facilitated the observation of any discernible trends or patterns in the data. Additionally, a linear regression analysis was conducted to investigate the potential impact of different movie genres on ratings. This statistical method aided in identifying genres that may significantly influence viewer ratings.

#### **Results**
Generate plots!!

#### The average movie ratings by year
![The average movie ratings by year](https://github.com/course-dprep/team-project-team_2/blob/main/gen/output/average_ratings_per_yearplot.pdf) 


## Repository overview

```
- data
- gen
  -output
  -temp
- src
  - analysis    
  - data-preparation
- .gitignore
- README.md
- makefile

```


## Dependencies

The installation guides can be found at http://tilburgsciencehub.com/.

- R. [Installation guide](https://tilburgsciencehub.com/building-blocks/configure-your-computer/statistics-and-computation/r/).
- Make. [Installation guide](https://tilburgsciencehub.com/building-blocks/configure-your-computer/automation-and-workflows/make/).

- Necessary R packages to run the R script:
```
install.packages("tidyr")
install.packages("dplyr")
install.packages("ggplot2")
install.packages("tidyverse")
install.packages("readr")
install.packages("gtsummary")
install.packages("stats")
install.packages("sjPlot")
```

## Running instructions

### Required programs
Required programs to install and run: 

* Git - to be able to run the repository locally (on your own computer) [Istallation guide](https://tilburgsciencehub.com/topics/automation/version-control/start-git/git/)
* R - programming language used to run code [Installation guide R and RStudio](https://tilburgsciencehub.com/topics/computer-setup/software-installation/rstudio/r/)
* RStudio - software that makes running R easier [Installation guide R and RStudio](https://tilburgsciencehub.com/topics/computer-setup/software-installation/rstudio/r/)
* Make - tool to automate the workflow [Installation guide](https://tilburgsciencehub.com/topics/automation/automation-tools/makefiles/make])

#### **Running The Code By Make**
To run the code, follow these instructions:
1. Install and run the required programs given in the previous section
2. Fork this repository to create an own copy of this work
3. Open your command line/terminal and run the following code:
```
git clone https://github.com/course-dprep/team-project-team_2
```
4. Set your working directory to `team-project-team_2` and run the following command:
```
make
```
5. When make has successfully run all the code, it will generate multiple graphs with the presentation of our analysis. 
6. To clean the data of all raw and unnecessary data files created during the pipeline, run the following code in the command line/terminal: 
```
make clean
```


## About

This project was a group project conducted by six members following the course Data Preparation and Workflow Management of the MSc Marketing Analytics at Tilburg University. The team members are:
- [Arthur Appert](https://github.com/Arth77) - email: a.p.appert@tilburguniversity.edu 
- [Boris Oostveen](https://github.com/OostveenBoris) - email: b.j.j.oostveen@tilburguniversity.edu
- [Goof Hendriks](https://github.com/GoofHendriks) - email: g.hendriks@tilburguniversity.edu
- [Remi Benschop](https://github.com/RemiBenschop) - email: r.benschop@tilburguniversity.edu
- [Robin Hogenboom](https://github.com/robinhogenboom) - email: r.hogenboom@tilburguniversity.edu
- [Sohaib Eddarkaoui](https://github.com/SohaibEd) - email: s.eddarkaoui@tilburguniversity.edu

