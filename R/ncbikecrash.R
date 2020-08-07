#' North Carolina Bicycle Crash Data
#'
#' All North Carolina bike crash data from 2007-2014. Data downloaded on
#' Sep 6, 2018.
#'
#' @source https://opendurham.nc.gov/explore/dataset/north_carolina_bicycle_crash_data_heatmap_/table/
#' @format A tibble with 7467 rows and 66 variables:
#' \describe{
#'   \item{object_id}{Crash ID}
#'   \item{city}{City of crash}
#'   \item{county}{County of crash}
#'   \item{region}{Region of crash}
#'   \item{development}{Development area of crash}
#'   \item{locality}{Locality of crash}
#'   \item{on_road}{Road where crash happened}
#'   \item{rural_urban}{Whether crash happened on rural or urban road}
#'   \item{speed_limit}{Speed limit where crash happened}
#'   \item{traffic_control}{Type of traffic control where crash happened}
#'   \item{weather}{Weather at the time of crash}
#'   \item{workzone}{Whether crash happened in a work zone}
#'   \item{bike_age}{Age of biker}
#'   \item{bike_age_group}{Age group of biker}
#'   \item{bike_alc_drug}{Whether biker had alcohol or drugs}
#'   \item{bike_alcohol}{Whether biker had alcohol}
#'   \item{bike_direction}{Direction of bike at the time of crash}
#'   \item{bike_injury}{Injury of biker}
#'   \item{bike_position}{Position of bike at the time of crash}
#'   \item{bike_race}{Race of biker}
#'   \item{bike_sex}{Sex of biker}
#'   \item{driver_age}{Age of driver}
#'   \item{driver_age_group}{Age group of driver}
#'   \item{driver_alcohol}{Whether driver had alcohol}
#'   \item{driver_alcohol_drugs}{Whether driver had alcohol or drugs}
#'   \item{driver_est_speed}{Estimated speed of driver}
#'   \item{driver_injury}{Injury of driver}
#'   \item{driver_race}{Race of driver}
#'   \item{driver_sex}{Sex of driver}
#'   \item{driver_vehicle_type}{Type of vehicle involved in crash}
#'   \item{crash_alcohol}{Whether alcohol was involved in crash}
#'   \item{crash_date}{Date of crash}
#'   \item{crash_day}{Day of crash}
#'   \item{crash_group}{Type of crash}
#'   \item{crash_hour}{Hour of crash}
#'   \item{crash_location}{Location of crash}
#'   \item{crash_month}{Month of crash}
#'   \item{crash_severity}{Severity of crash}
#'   \item{crash_time}{Time of crash}
#'   \item{crash_type}{Type of crash}
#'   \item{crash_year}{Year of crash}
#'   \item{ambulance_req}{Whether ambulance was required}
#'   \item{hit_run}{Whether accident was a hit and run}
#'   \item{light_condition}{Light condition at the time of crash}
#'   \item{road_character}{Road characteristics}
#'   \item{road_class}{Road class}
#'   \item{road_condition}{Road condition}
#'   \item{road_configuration}{Road configuration}
#'   \item{road_defects}{Road defects}
#'   \item{road_feature}{Road feature}
#'   \item{road_surface}{Road surface}
#'   \item{num_bikes_ai}{}
#'   \item{num_bikes_bi}{}
#'   \item{num_bikes_ci}{}
#'   \item{num_bikes_ki}{}
#'   \item{num_bikes_no}{}
#'   \item{num_bikes_to}{}
#'   \item{num_bikes_ui}{}
#'   \item{num_lanes}{Number of lanes}
#'   \item{num_units}{}
#'   \item{distance_mi_from}{}
#'   \item{frm_road}{}
#'   \item{rte_invd_cd}{}
#'   \item{towrd_road}{}
#'   \item{geo_point}{Latitude and longitude of crash}
#'   \item{geo_shape}{}
#' }
#' @examples
#' ncbikecrash
"ncbikecrash"
