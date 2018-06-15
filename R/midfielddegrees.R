#' @importFrom tibble tibble
NULL

#' Graduation data for 98,000 undergraduates
#'
#' A dataset of degree attributes of 97,640 undergraduates from US universities 1987 to 2016, sampled from the MIDFIELD database. A total of 47,499 students completed the requirements for their degrees.
#'
#' @format A data frame (tibble) with 97,640  observations and 5 variables,  occupying 10.2 MB of memory. Each observation is a unique student. The variables are:
#'
#' \describe{
#'   \item{id}{Unique, anonymized MIDFIELD student identifier.}
#'   \item{institution}{Anonymized institution name.}
#'   \item{cip6}{Graduation major expressed as a 6-digit IPEDS
#'       Classification of Instructional Programs (CIP) code.}
#'   \item{term_degree}{The academic year and term in which the student
#'       graduated.}
#'   \item{degree}{The type of undergraduate degree awarded}
#' }
#' @source Data provided by the MIDFIELD project:
#' \url{https://engineering.purdue.edu/MIDFIELD}
#' @examples
#' \dontrun{
#' tibble::glimpse(midfielddegrees)
#' }
"midfielddegrees"
