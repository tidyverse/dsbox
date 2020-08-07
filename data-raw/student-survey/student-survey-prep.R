# Load packages ----------------------------------------------------------------

library(tidyverse)
library(here)
library(usethis)

# Read csv ---------------------------------------------------------------------

student_survey <- read_csv(here::here("data-raw", "student_survey", "student_survey.csv"))

# Save data --------------------------------------------------------------------

use_data(student_survey, overwrite = TRUE)
