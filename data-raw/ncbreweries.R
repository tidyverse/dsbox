# Read csv, save as rda.
library(tidyverse)
library(here)

ncbreweries <- read_csv(here("data-raw", "ncbreweries.csv"))
save(ncbreweries, file = here("data", "ncbreweries.rdata"))
