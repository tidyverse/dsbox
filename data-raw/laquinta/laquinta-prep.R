# Load packages ----------------------------------------------------------------

library(tidyverse)
library(here)
library(usethis)

# Read csv ---------------------------------------------------------------------

laquinta <- read_csv(here::here("data-raw", "laquinta", "laquinta.csv"))

# Save data --------------------------------------------------------------------

use_data(laquinta, overwrite = TRUE)
