#' Course data for 98,000 undergraduates
#'
#' Data frame of course attributes of 97,064 undergraduates with 3.5 M
#' observations and 12 academic course variables keyed by student ID, term,
#' and course. Each observation is one course in one term for one student. A
#' stratified sample of the MIDFIELD database.
#'
#' @format \code{data.table} with 3.5 M observations and 12 variables,
#' occupying 348 MB of memory. Each observation is one course in one term for
#' one student. The variables are:
#'
#' \describe{
#'   \item{id}{character, unique anonymized MIDFIELD student identifier}
#'   \item{institution}{character, anonymized institution name}
#'   \item{term_course}{numeric, academic year and term the course is taken,
#'       format YYYYT}
#'   \item{course}{character, course name}
#'   \item{abbrev}{character, course alpha identifier (e.g. ENGR, MATH, ENGL)}
#'   \item{number}{character, course numeric identifier (e.g. 101, 3429)}
#'   \item{section}{character, course section identifier}
#'   \item{hours_course}{numeric, number of credit-hours for successful course
#'       completion}
#'   \item{type}{character, predominant delivery method for this section}
#'   \item{pass_fail}{character, whether or not the course was offered on a
#'       pass/fail basis }
#'   \item{grade}{character, course grade}
#'   \item{faculty_rank}{academic rank of the person teaching the course}
#' }
#' @source Data provided by the MIDFIELD project:
#' \url{https://engineering.purdue.edu/MIDFIELD}
#' @examples
#' \dontrun{
#' library(data.table)
#' midfieldcourses
#' }
#'
"midfieldcourses"
