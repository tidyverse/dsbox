# Load packages ----------------------------------------------------------------

library(tidyverse)
library(here)
library(usethis)

# Read csv ---------------------------------------------------------------------

dennys <- read_csv(here::here("data-raw", "dennys", "dennys.csv"))

# Save data --------------------------------------------------------------------

use_data(dennys, overwrite = TRUE)
