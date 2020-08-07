#' Fishing industry by country
#'
#' World fisheries harvest for 2005. The tonnage from capture and aquaculture
#' is listed by country. Countries which harvested less than 100,000 tons are
#' not included.
#'
#' @source https://en.wikipedia.org/wiki/Fishing_industry_by_country
#' @format A tibble with 75 rows and 3 variables:
#' \describe{
#'   \item{country}{Name of country}
#'   \item{capture}{Tonnage from capture, including fish, crustaceans, molluscs, etc.}
#'   \item{aquaculture}{Tonnage from aquaculture}
#' }
#' @examples
#' fisheries
"fisheries"
