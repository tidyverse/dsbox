# Load packages ----------------------------------------------------------------

library(tidyverse)
library(here)
library(janitor)
library(usethis)

# Read data, reshape -----------------------------------------------------------

ucbadmit <- read_csv(here::here("data-raw", "ucb-admit", "ucb-admit.csv"))

ucbadmit <- ucbadmit %>%
  janitor::clean_names() %>%
  mutate(
    admit = factor(admit, levels = c("Rejected", "Admitted")),
    gender = factor(gender),
    dept = factor(dept, ordered = TRUE)
  )

# Save data --------------------------------------------------------------------

use_data(ucbadmit, overwrite = TRUE)
