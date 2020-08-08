# Load packages ----------------------------------------------------------------

library(tidyverse)
library(here)
library(usethis)

# Read csv ---------------------------------------------------------------------

pac_2020 <- read_csv(here::here("data-raw", "pac-contributions", "pac-2020.csv"))
pac_2020_raw <- read_csv(here::here("data-raw", "pac-contributions", "pac-2020-raw.csv"))
pac_all <- read_csv(here::here("data-raw", "pac-contributions", "pac-all.csv"))
pac_all_clean <- read_csv(here::here("data-raw", "pac-contributions", "pac-all-clean.csv"))

# Save data --------------------------------------------------------------------

use_data(pac_2020, overwrite = TRUE)
use_data(pac_2020_raw, overwrite = TRUE)
use_data(pac_all, overwrite = TRUE)
use_data(pac_all_clean, overwrite = TRUE)
