
#' Term data sample
#'
#' Term information for approximately 98,000 undergraduates. One record per
#' student per enrolled term, keyed by student ID.
#'
#' Terms are encoded `YYYYT`, where `YYYY` is the year at the start of the
#' academic year and `T` encodes the semester or quarter within an academic year
#' as Fall (`1`), Winter (`2`), Spring (`3`), and Summer (`4`, `5`, and `6`).
#' For example, for academic year 1995--96, Fall 95--96 is encoded `19951`,
#' Spring 95--96 is encoded `19953`, and the first Summer 95-96 term is encoded
#' `19954`. The source database includes special month-long sessions encoded
#' with letters `A`, `B`, `C`, etc., though none are included in this sample.
#'
#' For program codes, 'midfielddata' uses the 2010 version of the Classification
#' of Instructional Programs (CIP). If  'midfieldr' is installed, type 
#' `help(cip, package = "midfieldr")` for details. 
#'
#' The data in 'midfielddata' are practice data, suitable for learning to work
#' with Student Unit Records (SURs) generally. Unlike the MIDFIELD research
#' database, the data tables in 'midfielddata' are not research data; they are
#' not suitable for drawing inferences about program attributes or student
#' experiences.
#'
#' @usage data(term, package = "midfielddata")
#'
#' @format A `data.frame` and `data.table` with 13 variables and approximately 
#'   640,000 observations of 97,555 unique students occupying 73 MB of memory:
#'
#'   \describe{ 
#'   
#'   \item{mcid}{Character, anonymized student identifier, e.g., 
#'   `"MCID3111142225"`.}
#'
#'   \item{institution}{Character, anonymized institution name, e.g., 
#'   `"Institution B"`.}
#'         
#'   \item{term}{Character, academic year and term, format `"YYYYT"`.} 
#'   
#'   \item{cip6}{Character, 6-digit CIP code of program in which a student is 
#'   enrolled in a term, e.g., `"090101"`, `"141201"`, `"260901"`, `"420101"`, 
#'   etc.} 
#'         
#'   \item{level}{Character, academic level determined by cumulative number of 
#'   credit ours earned, e.g., `"01 First-year"`, `"02 Second-year"`, etc.} 
#'   
#'   \item{standing}{Character, academic standing, e.g., `"Good Standing"`, 
#'   `"Academic Warning"`, etc.}
#'         
#'   \item{coop}{Character, cooperative education term, possible values are 
#'   `"Yes"`, `"No."`}
#'   
#'   \item{hours_term}{Numeric, credit hours earned in the term.}
#'   
#'   \item{hours_term_attempt}{Numeric, credit hours attempted in the term.}
#'   
#'   \item{hours_cumul}{Numeric, cumulative credit hours earned.}
#'   
#'   \item{hours_cumul_attempt}{Numeric, cumulative credit hours attempted.}
#'   
#'   \item{gpa_term}{Numeric, term grade point average.}
#'   
#'   \item{gpa_cumul}{Numeric, cumulative grade point average.} 
#'   
#'   }
#'
#' @source 
#' 
#' - Data provided by the MIDFIELD project: \url{https://midfield.online/}
#' - CIP codes adapted from NCES IPEDS: \url{https://nces.ed.gov/ipeds/cipcode/}
#'   
"term"
