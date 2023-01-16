# Load packages ----------------------------------------------------------------

library(tidyverse)
library(here)
library(usethis)

# Read csv, bring in names, clean data -----------------------------------------

ncbikecrash_raw <- read_csv2(here::here("data-raw", "ncbikecrash", "ncbikecrash.csv"),
                             na = c("NA", "", ".", "Unknown", "#NULL!"))
ncbikecrash_names <- read_csv(here::here("data-raw", "ncbikecrash", "ncbikecrash-names.csv"))

names(ncbikecrash_raw) <- ncbikecrash_names$new

ncbikecrash <- ncbikecrash_raw |>
  select(sort(names(ncbikecrash_raw))) |>
  select(
    object_id,
    city, county, region, development, locality, on_road,
    rural_urban, speed_limit, traffic_control, weather, workzone,
    starts_with("bike"),
    starts_with("driver"),
    starts_with("crash"),
    ambulance_req, hit_run, light_condition,
    starts_with("road"),
    starts_with("num"),
    distance_mi_from, frm_road, rte_invd_cd, towrd_road, # what are these?
    geo_point, geo_shape
  )

# Save data --------------------------------------------------------------------

use_data(ncbikecrash, overwrite = TRUE)
