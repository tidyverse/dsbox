#' Foreign-Connected PAC Contributions, 2020, clean data
#'
#' Every election cycle brings its own brand of excitement – and lots of money.
#' Political donations are of particular interest to political scientists and
#' other researchers studying politics and voting patterns.
#' They are also of interest to citizens who want to stay informed of how much
#' money their candidates raise and where that money comes from.
#'
#' In the United States, “only American citizens (and immigrants with green
#' cards) can contribute to federal politics, but the American divisions of
#' foreign companies can form political action committees (PACs) and collect
#' contributions from their American employees.” (Source: [OpenSecrets.org](https://www.opensecrets.org/political-action-committees-pacs/foreign-connected-pacs/2022))
#'
#' The data come from the
#' [OpenSecrets.org](https://www.opensecrets.org/political-action-committees-pacs/foreign-connected-pacs/2022).
#'
#' The data were scraped from the OpenSecrets.org website in June 2020.
#' It is part of a series of similar datasets in this package consisting of
#' datasets collected from OpenSecrets via webscraping.
#'
#' This particular dataset consists of the data for foreign-connected PAC
#' contributions for the 2020 election cycle, with some cleaning also done to
#' make it more accessible in introductory data science education.
#'
#' @source https://www.opensecrets.org/political-action-committees-pacs/foreign-connected-pacs/2022
#' @format A tibble with 226 rows and 6 variables:
#' \describe{
#'   \item{name}{Name of company (American divisions of a foreign company)}
#'   \item{country}{Country of origin}
#'   \item{parent}{PAC parent company}
#'   \item{total}{Total PAC contributions to all parties}
#'   \item{dems}{PAC contributions to the Democratic Party}
#'   \item{repubs}{PAC contributions to the Republican Party}
#' }
#' @seealso pac_2020_raw, pac_all, pac_all_raw
#' @examples
#'
#' library(tibble)
#'
#' glimpse(pac_2020)
#'
"pac_2020"
