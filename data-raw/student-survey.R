# Read csv, save as rda.
library(tidyverse)
library(here)
library(usethis)

student_survey <- read_csv(here("data-raw", "student-survey.csv"))
use_data(student_survey)
