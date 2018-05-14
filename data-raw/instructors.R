# Read csv, save as rda.
library(tidyverse)
library(here)

instructors <- read_csv(here("data-raw", "instructors.csv"))
save(instructors, file = here("data", "instructors.rdata"))
