# Load packages ----------------------------------------------------------------

library(tidyverse)
library(here)
library(usethis)

# Read csv ---------------------------------------------------------------------

instructors <- read_csv(here::here("data-raw", "instructors", "instructors.csv"))

# Save data --------------------------------------------------------------------

use_data(instructors, overwrite = TRUE)
