#' Locations of La Quinta Inn motels
#'
#' Dataset describing the locations of 909 La Quinta Inn locations in the United States.
#' Each observation corresponds to one motel, with motel information scraped
#' from https://www.lq.com/en/findandbook/hotel-listings.html. The process used to
#' obtain the geographic data is described in a blog post here
#' http://njgeo.org/2014/01/30/mitch-hedberg-and-gis/.
#'
#'
#' @source https://github.com/johnjreiser/HedbergGIS
#' @format A tibble with 909 rows and 6 variables:
#' \describe{
#'   \item{address}{Street address of the motel}
#'   \item{city}{City of the motel}
#'   \item{state}{US State of the motel}
#'   \item{zip}{US ZIP Code of the motel}
#'   \item{longitude}{The longitude of the motel in degrees.}
#'   \item{latitude}{The latitude of the motel in degrees.}
#' }
#' @examples
#'
#' library(ggplot2)
#' library(dplyr)
#'
#'
#'
#' laquinta |>
#'   group_by(state) |>
#'   summarise(motels = n()) |>
#'   arrange(desc(factor(motels))) |>
#'   slice_head(n = 10) |>
#'   ggplot(aes(x = reorder(state, -motels), y = motels)) +
#'   geom_col()
"laquinta"
