#' @importFrom tibble tibble
NULL

#' Academic term data for 98,000 undergraduates
#'
#' A dataset of term attributes of 97,064 undergraduates matriculating in US universities from from 1987 to 2016, sampled from the MIDFIELD database.
#'
#' @format A data frame (tibble) with 729,014 observations and 13 variables,  occupying 82.1 MB of memory. Each observation is one term for one student. The variables are:
#'
#' \describe{
#'   \item{id}{Unique, anonymized MIDFIELD student identifier.}
#'   \item{institution}{Anonymized institution name.}
#'   \item{cip6}{cip6}
#'   \item{term}{term}
#'   \item{level}{level}
#'   \item{standing}{standing}
#'   \item{coop}{coop}
#'   \item{hours_term_attempt}{hours_term_attempt}
#'   \item{hours_term}{hours_term}
#'   \item{gpa_term}{gpa_term}
#'   \item{hours_cumul_attempt}{hours_cumul_attempt}
#'   \item{hours_cumul}{hours_cumul}
#'   \item{gpa_cumul}{gpa_cumul}
#' }
#' @source \url{https://engineering.purdue.edu/MIDFIELD}.
#' @examples
#' \dontrun{
#' tibble::glimpse(midfieldterms)
#' }
"midfieldterms"
