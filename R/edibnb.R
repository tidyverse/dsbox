#' Airbnb Listings in Edinburgh
#'
#' Recent developments in Edinburgh regarding the growth of Airbnb and its
#' impact on the housing market means a better understanding of the Airbnb
#' listings is needed. Using data provided by Airbnb, we can explore how Airbnb
#' availability and prices vary by neighbourhood.
#'
#' The data come from the
#' [Kaggle database](https://www.kaggle.com/thoroc/edinburgh-inside-airbnb/version/2),
#' and was originally distributed by
#' [Inside Airbnb](http://insideairbnb.com/get-the-data.html) on 25 June 2019.
#'
#' The data has been modified to better serve the goals of introductory data science education.
#'
#' @source https://www.kaggle.com/thoroc/edinburgh-inside-airbnb/version/2
#' @format A tibble with 13,245 rows and 10 variables:
#' \describe{
#' \item{id}{ID number of the listing}
#' \item{price}{Price, in GBP, for one night stay}
#' \item{neighbourhood}{Neighbourhood listing is located in}
#' \item{accommodates}{Number of people listing accommodates}
#' \item{bathrooms}{Number of bathrooms}
#' \item{bedrooms}{Number of bedrooms}
#' \item{beds}{Number of beds (which can be different than the number of bedrooms)}
#' \item{review_scores_rating}{Average rating of property}
#' \item{number_of_reviews}{Number of reviews}
#' \item{listing_url}{Listing URL}
#' }
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(edibnb, aes(x = price)) +
#'   geom_histogram(binwidth = 50)
#'
"edibnb"
