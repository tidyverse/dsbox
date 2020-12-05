#' Data from the 2016 General Social Survey (GSS)
#'
#' The GSS gathers data on contemporary American society in order to monitor and
#' explain trends and constants in attitudes, behaviors, and attributes.
#' Hundreds of trends have been tracked since 1972. In addition, since the GSS
#' adopted questions from earlier surveys, trends can be followed for up to 70 years.

#' The GSS contains a standard core of demographic, behavioral, and attitudinal
#' questions, plus topics of special interest. Among the topics covered are civil
#' liberties, crime and violence, intergroup tolerance, morality, national spending
#' priorities, psychological well-being, social mobility, and stress and traumatic events.
#'
#' The data come from the [NORC at the University of Chicago](https://gss.norc.org/Get-The-Data)
#'
#' The data has been modified to better serve the goals of introductory data science education.
#' Only 9 of the original 935 variables have been selected for this dataset.
#'
#' @source https://gss.norc.org/Get-The-Data
#' @format An object of class `tbl_df` (inherits from `tbl`, `data.frame`) with 2867 rows and 9 columns.
#' \describe{
#'   \item{harass5}{Response to the questions "Over the past five years, have you been harassed by your superiors or co-workers at your job, for example, have you experienced any bullying, physical or psychological abuse?" Possible answers are Yes, No and Does not apply.}
#'   \item{emailmin}{Number of minutes spent on email weekly, extra to the hours in emailhrs (e.g. emailmin = 30 for 2.5 hours on email).}
#'   \item{emailhr}{Number of hours spent on email weekly.}
#'   \item{educ}{Number of years in education.}
#'   \item{polviews}{Political views. Possible answers are Extremely liberal, Liberal, Slightly liberal, Moderate, Slghtly conservative, Conservative, Extrmly conservative.}
#'   \item{advfront}{Response to the question "Even if it brings no immediate benefits, scientific research that advances the frontiers of knowledge is necessary and should be supported by the federal government." Possible answers are Strongly agree, Agree, Dont know, Disagree and Strongly Disagree.}
#'   \item{snapchat}{Whether respondant uses Snapchat or not.}
#'   \item{instagram}{Whether respondant uses Instagram or not.}
#'   \item{wrkstat}{Work status.}
#' }
#' @examples
#'
#' library(ggplot2)
#' library(dplyr)
#'
#' gss16 %>%
#'   mutate(email = (emailhr * 60) + emailmin) %>%
#'   ggplot(aes(x = email)) +
#'   geom_histogram(binwidth = 60) +
#'   labs(x = "Time spent on email (in minutes)")
#'
"gss16"
