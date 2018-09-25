# Read csv, save as rda.
library(tidyverse)
library(here)
library(janitor)
library(usethis)

ucbadmit <- read_csv(here("data-raw", "ucb-admit.csv"))

ucbadmit <- ucbadmit %>%
  janitor::clean_names() %>%
  mutate(
    admit = factor(admit),
    gender = factor(gender),
    dept = factor(dept, ordered = TRUE)
  )

use_data(ucbadmit)
