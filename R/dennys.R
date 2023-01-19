#' Locations of Denny's restaurants
#'
#' Dataset describing the locations of 1643 Denny's Restaurants in the United States.
#' Each observation corresponds to one restaurant, with restaurant information scraped
#' from https://locations.dennys.com/. The process used to obtain the geographic data
#' is described in a blog post here http://njgeo.org/2014/01/30/mitch-hedberg-and-gis/.
#'
#'
#' @source https://github.com/johnjreiser/HedbergGIS
#' @format A tibble with 1643 rows and 6 variables:
#' \describe{
#'   \item{address}{Street address of the restaurant.}
#'   \item{city}{City of the restaurant.}
#'   \item{state}{US State of the restaurant.}
#'   \item{zip}{US ZIP Code of the restaurant.}
#'   \item{longitude}{The longitude of the restaurant. in degrees.}
#'   \item{latitude}{The latitude of the restaurant. in degrees.}
#' }
#' @examples
#'
#' library(ggplot2)
#' library(dplyr)
#'
#'
#'
#' dennys |>
#'   group_by(state) |>
#'   summarise(restaurants = n()) |>
#'   arrange(desc(factor(restaurants))) |>
#'   slice_head(n = 10) |>
#'   ggplot(aes(x = reorder(state, -restaurants), y = restaurants)) +
#'   geom_col()
"dennys"
