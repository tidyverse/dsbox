#' Breweries in North Carolina
#'
#' This dataset is scraped from RateBeer.com on April 18, 2018, and it includes
#' a list of breweries in North Carolina as of that date.
#'
#' @source https://www.ratebeer.com/breweries/north%20carolina/33/213/
#' @format A tibble with 251 rows and 7 variables:
#' \describe{
#' \item{name}{Name of brewery}
#' \item{city}{City where brewery is located}
#' \item{type}{Type of brewery (Microbrewery, Client Brewer, Brewpub,
#' Brewpub/Brewery, Commercial Brewery)}
#' \item{beercount}{Number of beers brewed at the brewery}
#' \item{est}{Year brewery opened}
#' \item{status}{Status of brewery (Active or Closed)}
#' \item{url}{URL of brewery page on RateBeer.com}
#' }
#' @examples
#' instructors
"ncbreweries"
