#' Sales of Lego sets (simulated)
#'
#' Simulated data based on real prices for Lego sales in 2018 in the United States. 
#' Names and hobbies have been randomly generated
#'
#'
#' @format A tibble with 620 rows and 14 variables:
#' \describe{
#'   \item{first_name}{First name of customer}
#'   \item{last_name}{Last name of customer}
#'   \item{age}{Age of customer}
#'   \item{phone_number}{Phone number of customer}
#'   \item{set_id}{Set ID of lego set purchased}
#'   \item{number}{Item number of lego set purchased}
#'   \item{theme}{Theme of lego set purchased}
#'   \item{subtheme}{Sub theme of lego set purchased}
#'   \item{year}{Year of purchase}
#'   \item{name}{ Name of lego set purchased}
#'   \item{pieces}{Number of pieces of legos in set purchased}
#'   \item{us_price}{Price of set purchase in US Dollars}
#'   \item{image_url}{Image URL of lego set purchased}
#'   \item{quantity}{Quantity of lego set(s) purchased}
#' }
#' @examples
#'
#' library(tidyverse)
#'
#' lego_sales %>%
#'   count(first_name, sort = TRUE) %>%
#'   top_n(3)
#'
"lego_sales"
