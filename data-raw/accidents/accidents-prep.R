# Load packages ----------------------------------------------------------------

library(tidyverse)
library(here)
library(usethis)

# Read csv ---------------------------------------------------------------------

accidents <- read_csv(here::here("data-raw", "accidents", "uk-accidents.csv"))

# Save data --------------------------------------------------------------------

use_data(accidents, overwrite = TRUE)
