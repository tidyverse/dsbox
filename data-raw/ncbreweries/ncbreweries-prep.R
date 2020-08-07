# Load packages ----------------------------------------------------------------

library(tidyverse)
library(here)
library(usethis)

# Read csv ---------------------------------------------------------------------

ncbreweries <- read_csv(here::here("data-raw", "ncbreweries", "ncbreweries.csv"))

# Save data --------------------------------------------------------------------

use_data(ncbreweries, overwrite = TRUE)
