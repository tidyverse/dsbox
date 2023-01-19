# Load packages ----------------------------------------------------------------

library(tidyverse)
library(here)
library(usethis)

# Read csv ---------------------------------------------------------------------

accidents <- read_csv(here::here("data-raw", "accidents", "uk-accidents.csv"))

# Clean up / make more usable --------------------------------------------------

accidents <- accidents |>
  rename(
    id                 = accident_index,
    easting            = location_easting_osgr,
    northing           = location_northing_osgr,
    severity           = accident_severity,
    vehicles           = number_of_vehicles,
    casualties         = number_of_casualties,
    district           = local_authority_district,
    highway            = local_authority_highway,
    urban_rural        = urban_or_rural_area,
    first_road_class   = `1st_road_class`,
    first_road_number  = `1st_road_number`,
    second_road_class  = `2nd_road_class`,
    second_road_number = `2nd_road_number`,
    ped_cross_human    = pedestrian_crossing_human_control,
    ped_cross_physical = pedestrian_crossing_physical_facilities,
    light              = light_conditions,
    weather            = weather_conditions,
    road_surface       = road_surface_conditions,
    special_condition  = special_conditions_at_site,
    hazard             = carriageway_hazards,
    police             = did_police_officer_attend_scene_of_accident
  ) |>
  mutate(
    severity = case_when(
      severity == 1 ~ "Fatal",
      severity == 2 ~ "Serious",
      severity == 3 ~ "Slight"
    ),
    severity = fct_relevel(severity, "Fatal", "Serious", "Slight"),
    day_of_week = case_when(
      day_of_week == 1 ~ "Sunday",
      day_of_week == 2 ~ "Monday",
      day_of_week == 3 ~ "Tuesday",
      day_of_week == 4 ~ "Wednesday",
      day_of_week == 5 ~ "Thursday",
      day_of_week == 6 ~ "Friday",
      day_of_week == 7 ~ "Saturday"
    ),
    day_of_week = fct_relevel(day_of_week,
                              "Monday",
                              "Tuesday",
                              "Wednesday",
                              "Thursday",
                              "Friday",
                              "Saturday",
                              "Sunday"),
    first_road_class = case_when(
      first_road_class == 1 ~ "Motorway",
      first_road_class == 3 ~ "A(M) road",
      first_road_class == 4 ~ "B-road",
      first_road_class == 5 ~ "C-road",
      first_road_class == 6 ~ "Unclassified"
    ),
    first_road_class = fct_relevel(first_road_class,
                                   "Motorway",
                                   "A(M) road",
                                   "B-road",
                                   "C-road",
                                   "Unclassified"),
    first_road_number = as.character(first_road_number),
    road_type = case_when(
      road_type == 1 ~ "Roundabout",
      road_type == 2 ~ "One way street",
      road_type == 3 ~ "Dual carriageway",
      road_type == 6 ~ "Single carriageway",
      road_type == 7 ~ "Slip road"
    ),
    road_type = fct_relevel(road_type,
                            "Roundabout",
                            "One way street",
                            "Dual carriageway",
                            "Single carriageway",
                            "Slip road"),
    junction_detail = case_when(
      junction_detail == 0 ~ "Not within 20 metres of junction",
      junction_detail == 1 ~ "Roundabout",
      junction_detail == 2 ~ "Mini-roundabout",
      junction_detail == 3 ~ "T or staggered junction",
      junction_detail == 5 ~ "Slip road",
      junction_detail == 6 ~ "Crossroads",
      junction_detail == 7 ~ "More than 4 arms",
      junction_detail == 8 ~ "Private drive or entrance",
      junction_detail == 9 ~ "Other junction"
    ),
    junction_control = case_when(
      junction_control == -1 ~ "Missing / Out of range",
      junction_control == 1  ~ "Authorised person",
      junction_control == 2  ~ "Auto traffic signal",
      junction_control == 3  ~ "Stop sign",
      junction_control == 4  ~ "Give way or uncontrolled"
    ),
    second_road_class = case_when(
      second_road_class == -1 ~ "Missing / Out of range",
      second_road_class == 1  ~ "Motorway",
      second_road_class == 3  ~ "A-road",
      second_road_class == 4  ~ "B-road",
      second_road_class == 5  ~ "C-road",
      second_road_class == 6  ~ "Unclassified"
    ),
    second_road_number = as.character(second_road_number),
    ped_cross_human = case_when(
      ped_cross_human == 0 ~ "None within 50 metres",
      ped_cross_human == 1 ~ "Control by school crossing patrol",
      ped_cross_human == 2 ~ "Control by other authorised person"
      ),
    ped_cross_physical = case_when(
      ped_cross_physical == 0 ~ "No physical crossing facilities within 50 metres",
      ped_cross_physical == 1 ~ "Zebra crossing",
      ped_cross_physical == 4 ~ "Non-junction crossing",
      ped_cross_physical == 5 ~ "Pedestrian phase at traffic signal junction",
      ped_cross_physical == 8 ~ "Central refuge"
    ),
    light = case_when(
      light == 1 ~ "Daylight",
      light == 4 ~ "Darkness - lights lit",
      light == 5 ~ "Darkness - lights unlit",
      light == 6 ~ "Darkness - no lighting",
      light == 7 ~ "Darkness - lighting unknown"
    ),
    light = fct_relevel(light,
                        "Daylight",
                        "Darkness - lights lit",
                        "Darkness - lights unlit",
                        "Darkness - no lighting",
                        "Darkness - lighting unknown"),
    weather = case_when(
      weather == 1  ~ "Fine + no high winds",
      weather == 2  ~ "Raining + no high winds",
      weather == 3  ~ "Snowing + no high winds",
      weather == 4  ~ "Fine + high winds",
      weather == 5  ~ "Raining + high winds",
      weather == 6  ~ "Snowing + high winds",
      weather == 7  ~ "Fog or mist",
      weather == 8  ~ "Other",
      weather == 9  ~ "Unknown"
    ),
    weather = fct_relevel(weather,
                          "Fine + no high winds",
                          "Raining + no high winds",
                          "Snowing + no high winds",
                          "Fine + high winds",
                          "Raining + high winds",
                          "Snowing + high winds",
                          "Fog or mist",
                          "Other",
                          "Unknown"),
    road_surface = case_when(
      road_surface == 1  ~ "Dry",
      road_surface == 2  ~ "Wet or damp",
      road_surface == 3  ~ "Snow",
      road_surface == 4  ~ "Frost or ice",
      road_surface == 5  ~ "Flood over 3cm deep"
    ),
    road_surface = fct_relevel(road_surface,
                               "Dry",
                               "Wet or damp",
                               "Snow",
                               "Frost or ice",
                               "Flood over 3cm deep"),
    special_condition = case_when(
      special_condition == 0 ~ "None",
      special_condition == 3 ~ "Road sign or marking defective or obscured",
      special_condition == 4 ~ "Roadworks",
      special_condition == 5 ~ "Road surface defective"
    ),
    special_condition = fct_relevel(special_condition,
                                    "None",
                                    "Road sign or marking defective or obscured",
                                    "Roadworks",
                                    "Road surface defective"),
    hazard = case_when(
      hazard == 0 ~ "None",
      hazard == 2 ~ "Other object on road",
      hazard == 3 ~ "Previous accident",
      hazard == 6 ~ "Pedestrian in carriageway - not injured"
      ),
    hazard = fct_relevel(hazard,
                         "None",
                         "Other object on road",
                         "Previous accident",
                         "Pedestrian in carriageway - not injured"),
    police = case_when(
      police == 1 ~ "Yes",
      police == 2 ~ "No",
      police == 3 ~ "No + accident self reported")
  )

# Save data --------------------------------------------------------------------

use_data(accidents, overwrite = TRUE)
