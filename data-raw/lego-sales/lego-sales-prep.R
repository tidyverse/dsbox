# Load packages ----------------------------------------------------------------

library(tidyverse)
library(here)
library(usethis)

# Read csv ---------------------------------------------------------------------

lego_sales <- read_csv(here::here("data-raw", "lego-sales", "lego-sales.csv"))

# Save data --------------------------------------------------------------------

use_data(lego_sales, overwrite = TRUE)
