# Load packages ----------------------------------------------------------------

library(tidyverse)
library(here)
library(usethis)

# Read csv ---------------------------------------------------------------------

fisheries <- read_csv(here::here("data-raw", "fisheries", "fisheries.csv"))

# Save data --------------------------------------------------------------------

use_data(fisheries, overwrite = TRUE)
