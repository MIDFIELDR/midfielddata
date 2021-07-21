

#' Term data sample
#'
#' Table of term-related attributes of approximately 96,000 undergraduates for
#' all terms completed at their institutions. Each observation is one term for
#' one student keyed by student ID and term.
#'
#' The data in midfielddata are a proportionate stratified random sample of 12
#' institutions in the MIDFIELD research database. However, these are practice
#' data, not research data---suitable for learning about student-record
#' analysis, but not for drawing inferences about student performance.
#'
#' Students in the \code{term} table have records in the
#' \link[midfielddata]{student} table only if they are admitted as
#' degree-seeking undergraduates and in the \link[midfielddata]{degree} table
#' only if they complete a program.
#'
#' Terms are encoded YYYYT, where YYYY is the year of the Fall term that starts
#' the academic year and T = 1 (Fall), 2 (Winter, quarter systems only), 3
#' (Spring), and 4 (Summer) or 5 and 6 (Summer sessions 1 and 2). For example,
#' for the 1995--96 academic year, Fall '95 is encoded 19951, Spring '96 is
#' encoded 19953, and the first summer '96 term is encoded 19954. The MIDFIELD
#' research database also includes terms of one month duration, encoded with
#' letters A, B, C, etc., though none are included in this sample.
#'
#' For program codes, midfielddata uses the 2010 version of the Classification
#' of Instructional Programs (CIP) . See midfieldr
#' \code{\link[midfieldr:cip]{cip}} for more information.
#'
#' @format A \code{data.table} with approximately 711,000 observations and
#' 13 variables occupying 80 MB of memory:
#' \describe{
#'   \item{mcid}{Character, anonymized student identifier}
#'
#'   \item{institution}{Character, anonymized institution name, e.g.,
#'       Institution A, Institution B, etc.}
#'
#'   \item{term}{Character, academic year and term, format YYYYT}
#'
#'   \item{cip6}{Character, 6-digit CIP code of program in which a student is
#'       enrolled in a term}
#'
#'   \item{level}{Character, 01 Freshman, 02 Sophomore, etc.}
#'
#'   \item{standing}{Character, academic standing, e.g.,
#'       Good Standing, Academic Suspension, etc.}
#'
#'   \item{coop}{Character, cooperative education term, Yes or No}
#'
#'   \item{hours_term}{Numeric, credit hours earned in the term}
#'
#'   \item{hours_term_attempt}{Numeric, credit hours attempted in the term}
#'
#'   \item{hours_cumul}{Numeric, cumulative credit hours earned}
#'
#'   \item{hours_cumul_attempt}{Numeric, cumulative credit hours attempted}
#'
#'   \item{gpa_term}{Numeric, term grade point average}
#'
#'   \item{gpa_cumul}{Numeric, cumulative grade point average}
#' }
#'
#'
#' @usage data(term)
#'
#'
#' @source
#' \itemize{
#'   \item{Data provided by the MIDFIELD project:
#'         \url{https://engineering.purdue.edu/MIDFIELD}}
#'   \item{CIP codes from NCES IPEDS:
#'         \url{https://nces.ed.gov/ipeds/cipcode/}}
#' }
#'
#'
"term"
