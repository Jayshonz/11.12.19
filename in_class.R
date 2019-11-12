library(dplyr)
library(janitor)
library(googlesheets)
library(googlesheets4)
library(rstanarm)
library(gganimate)
library(moderndive)
library(tidyverse)


#Read data into elect object using googlesheets4 lib
elect <- read_sheet("13NhlT-Oik5P4NOKRWwrJ7xZQlddFNk81HHEw9wkWglM")



f <- formula(partisanship ~ dvote)
g <- glm(f, data = elect)

h <- lm(f, data=elect)

get_regression_points(h)
get_regression_table(h)


