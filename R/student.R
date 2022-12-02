
#' Student data sample
#'
#' Demographic information at matriculation for approximately 98,000
#' degree-seeking undergraduate students. One record per student, keyed by
#' student ID.
#'
#' The data in 'midfielddata' are practice data, suitable for learning to work
#' with Student Unit Records (SURs) generally. Unlike the MIDFIELD research
#' database, the data tables in 'midfielddata' are not research data; they are
#' not suitable for drawing inferences about program attributes or student
#' experiences.
#' 
#' @usage data(student, package = "midfielddata")
#'
#' @format A `data.frame` and `data.table` with 13 variables and 97,555 
#'   observations of unique students occupying 18 MB of memory:
#'
#'   \describe{
#'
#'   \item{mcid}{Character, anonymized student identifier, e.g., 
#'   `"MCID3111142225"`.}
#'
#'   \item{institution}{Character, anonymized institution name, e.g., 
#'   `"Institution B"`.}
#'
#'   \item{transfer}{Character, transfer status, possible values are  
#'   `"First-Time in College"`, `"First-Time Transfer"`.}
#'
#'   \item{hours_transfer}{Numeric, number of credit hours transferred (or 
#'   `NA`).}
#'
#'   \item{race}{Character, race/ethnicity, e.g., `"Asian"`, `"Black"`, 
#'   `"International"`, `"Latine"`, etc.}
#'
#'   \item{sex}{Character, sex, possible values are `"Female"`, `"Male"`, 
#'   `"Unknown"`.}
#'
#'   \item{age_desc}{Character, age group, possible values are `"25 and Older"`, 
#'   `"Under 25"`.}
#'   
#'   \item{us_citizen}{Character, US citizenship, possible values are `"No"`, 
#'   `"Yes"`.}
#'
#'   \item{home_zip}{Character, home ZIP code (or `NA`), e.g., `"02056"`, `"20170"`, 
#'   `"51301"`, `"80129"`, etc.}
#'
#'   \item{high_school}{Character, code for the last high school attended 
#'   before admission (or `NA`), e.g., `"060075"`, `"210512"`, `"431800"`, 
#'   `"502195"`, etc.}
#'
#'   \item{sat_math}{Numeric, SAT mathematics test score (or `NA`).}
#'
#'   \item{sat_verbal}{Numeric, SAT reading test score (or `NA`).}
#'
#'   \item{act_comp}{Numeric, ACT composite test score (or `NA`).}
#'
#'   }
#'
#' @source Data provided by the MIDFIELD project: \url{https://midfield.online/}
#'   
"student"
