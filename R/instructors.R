#' Instructional staff employee trends
#'
#' The American Association of University Professors (AAUP) is a nonprofit
#' membership association of faculty and other academic professionals. This
#' dataset released by the AAUP shows trends in instructional staff employees
#' between 1975 and 2011. Values given are percentages of full-time tenured,
#' full-time tenure-track, full-time non-tenure-track, and part-time faculty
#' as well as graduate student employees for each year in the dataset. Values
#' may not add up to 100% for a given year due to rounding errors.
#'
#' @source \url{https://www.aaup.org/sites/default/files/files/AAUP_Report_InstrStaff-75-11_apr2013.pdf}
#' @format A tibble with 11 rows and 6 variables:
#' \describe{
#'   \item{year}{Year}
#'   \item{full_time_tenured}{Percentage of Full-Time Tenured Faculty}
#'   \item{full_time_tenure_track}{Percentage of Full-Time Tenure-Track Faculty}
#'   \item{full_time_non_tenure_track}{Percentage of Full-Time Non-Tenure-Track Faculty}
#'   \item{part_time}{Percentage of Part-Time Faculty}
#'   \item{grad_student}{Percentage of Graduate Student Employees}
#' }
#' @examples
#' instructors
"instructors"
