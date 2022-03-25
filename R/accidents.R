#' Road Safety Data - Accidents 2018
#'
#' Road accidents and their causes are of particular importance to road safety experts
#' looking to prevent them.
#'
#' The data come from the UK Government at
#' [data.gov.uk](https://data.gov.uk/dataset/cb7ae6f0-4be6-4935-9277-47e5ce24a11f/road-safety-data).
#' It's been modified to better serve the goals of introductory data science education.
#'
#' @source https://data.gov.uk/dataset/cb7ae6f0-4be6-4935-9277-47e5ce24a11f/road-safety-data
#' @format A tibble with 768 rows and 31 variables:
#' \describe{
#'   \item{id}{Accident ID}
#'   \item{easting}{Easting of accident location}
#'   \item{northing}{Northing of accident location}
#'   \item{longitude}{Longitude of accident location}
#'   \item{latitude}{Latitude of accident location}
#'   \item{police_force}{Police force}
#'   \item{severity}{Accident severity: Fatal, Serious, Slight}
#'   \item{vehicles}{Number of vehicles involved in accident}
#'   \item{casualties}{Number of people injured in the accident}
#'   \item{date}{Date of the accident}
#'   \item{day_of_week}{Day of the week of the accident}
#'   \item{time}{Time of the accident on the 24h clock}
#'   \item{district}{Local authority district}
#'   \item{highway}{Local authority highway}
#'   \item{first_road_class}{Class of 1st road involved in accident: Motorway, A(M) road (A-road with motorway restrictions), A-road, B-road, C-road, Unclassified}
#'   \item{first_road_number}{ID of 1st road (0 if unclassified)}
#'   \item{road_type}{Type of road: Roundabout, One way street, Dual carriageway, Single carriageway, Slip road}
#'   \item{speed_limit}{Speed limit on the road in mph}
#'   \item{junction_detail}{Detail on junction where accident occurred: Crossroads, Mini-roundabout, More than 4 arms, Not within 20 metres of junction, Other junction, Private drive or entrance, Roundabout, Slip road, T or staggered junction}
#'   \item{junction_control}{How junction was controlled: Authorised person, Auto traffic signal, Give way or uncontrolled, Missing / Out of range, Stop sign}
#'   \item{second_road_class}{Class of 2st road involved in accident: A-road, B-road, C-road, Missing / Out of range, Motorway, Unclassified}
#'   \item{second_road_number}{ID of 2nd road (0 if unclassified)}
#'   \item{ped_cross_human}{Level of human control at a pedestrian crossing: Control by other authorised person, Control by school crossing patrol, None within 50 metres}
#'   \item{ped_cross_physical}{Level of facilities controlling a pedestrian crossing: Central refuge, No physical crossing facilities within 50 metres, Non-junction crossing (pelican, puffin, toucan or similar light crossing), Pedestrian phase at traffic signal junction, Zebra crossing}
#'   \item{light}{Light condition at the time of accident: Daylight, Darkness - lights lit, Darkness - lights unlit, Darkness - no lighting, Darkness - lighting unknown}
#'   \item{weather}{Weather condition at the time of accident: Fine + no high winds, Raining + no high winds, Snowing + no high winds, Fine + high winds, Raining + high winds, Snowing + high winds, Fog or mist, Other, Unknown}
#'   \item{road_surface}{Road surface conditions at the time of the accident: Dry, Wet or damp, Snow, Frost or ice, Flood over 3cm deep}
#'   \item{special_condition}{Special condition at the site of the accident: None, Road sign or marking defective or obscured, Roadworks, Road surface defective}
#'   \item{hazard}{Carriageway hazards: None, Other object on road, Previous accident, Pedestrian in carriageway - not injured}
#'   \item{urban_rural}{Type of area the accident occurred in: 1 - urban, 2 - rural}
#'   \item{police}{Did police officer attend the scene of the accident: No, No + accident self reported (using a self completion form), Yes}
#' }
#'
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(accidents, aes(x = speed_limit)) +
#'   geom_bar()
#'
"accidents"

