# Read csv, save as rda.
library(tidyverse)
library(here)

fisheries <- read_csv(here("data-raw", "fisheries.csv"))
save(fisheries, file = here("data", "fisheries.rdata"))
