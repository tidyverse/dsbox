library(tidyverse)
library(here)

edibnb <- read_csv(here("data-raw", "edibnb", "listings.csv"))

usethis::use_data(edibnb, overwrite = TRUE)
