#' @importFrom tibble tibble
NULL

#' Academic course data for 98,000 undergraduates
#'
#' A dataset of course attributes of 97,064 undergraduates matriculating in
#' US universities from from 1987 to 2016, sampled from the MIDFIELD database.
#'
#' @format A data frame (tibble) with 3.5 M observations and 12 variables,
#' occupying 348 Mb of memory. Each observation is one course in one term for
#' one student. The variables are:
#'
#' \describe{
#'   \item{id}{Unique, anonymized MIDFIELD student identifier.}
#'   \item{institution}{Anonymized institution name.}
#'   \item{term_course}{The term the course was attempted}
#'   \item{course}{Course name}
#'   \item{abbrev}{Course alpha identifier (e.g. ENGR, MATH, ENGL)}
#'   \item{number}{Course numeric identifier (e.g. 101, 3429)}
#'   \item{section}{Course section identifier}
#'   \item{hours_course}{The number of hours awarded upon successful
#'       completion of the course}
#'   \item{type}{The means by which instruction is predominately delivered
#'       for this course section}
#'   \item{pass_fail}{Was the course offered pass/fail?}
#'   \item{grade}{The grade awarded for the course}
#'   \item{faculty_rank}{Academic rank of the person teaching the course}
#' }
#' @source Data provided by the MIDFIELD project:
#' \url{https://engineering.purdue.edu/MIDFIELD}
#' @examples
#' \dontrun{
#' tibble::glimpse(midfieldcourses)
#' }
"midfieldcourses"
