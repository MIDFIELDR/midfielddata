
#' Degree data sample
#'
#' Degree information for approximately 50,000 undergraduates earning degrees.
#' One record per student per degree, keyed by student ID. A subset of the
#' 98,000 undergraduates in the practice data.
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
#' of Instructional Programs (CIP). If 'midfieldr' is installed, type 
#' `help(cip, package = "midfieldr")` for details. 
#'
#' The data in 'midfielddata' are practice data, suitable for learning to work
#' with Student Unit Records (SURs) generally. Unlike the MIDFIELD research
#' database, the data tables in 'midfielddata' are not research data; they are
#' not suitable for drawing inferences about program attributes or student
#' experiences.
#'
#' @usage data(degree, package = "midfielddata")
#'
#' @format A `data.frame` and `data.table` with 5 variables and 49,543 
#'   observations of unique students occupying 6 MB of memory:
#'
#'   \describe{
#'
#'   \item{mcid}{Character, anonymized student identifier, e.g., 
#'   `"MCID3111142225"`.}
#'
#'   \item{institution}{Character, anonymized institution name, e.g., 
#'   `"Institution B"`.}
#'
#'   \item{term_degree}{Character, academic year and term, format `"YYYYT"`, in
#'   which a student completes their program.}
#'
#'   \item{cip6}{Character, 6-digit CIP code of program in which a student earns
#'   a degree, e.g., `"090101"`, `"141201"`, `"260901"`, `"420101"`, etc.}
#'
#'   \item{degree}{Character, type of degree awarded, e.g., 
#'   `"Bachelor of Arts in Geography"`, `"Bachelor of Science in Finance"`, 
#'   etc.}
#'
#'   }
#'
#' @source 
#' 
#' - Data provided by the MIDFIELD project: \url{https://midfield.online/}
#' - CIP codes adapted from NCES IPEDS: \url{https://nces.ed.gov/ipeds/cipcode/}
#'   
"degree"
