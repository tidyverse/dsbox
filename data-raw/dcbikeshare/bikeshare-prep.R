# Load packages ----------------------------------------------------------------

library(tidyverse)
library(here)
library(usethis)

# Read csv ---------------------------------------------------------------------

dcbikeshare <- read_csv(here::here("data-raw", "dcbikeshare", "dcbikeshare.csv"))

# Save data --------------------------------------------------------------------

use_data(dcbikeshare, overwrite = TRUE)
