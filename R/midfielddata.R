#' Student Record Data for 98,000 Undergraduates
#'
#' Data package with a stratified sample from the MIDFIELD database.
#'
#' The data comprise student records from registrars at participating US
#' universities, including demographic, term, course, and degree
#' information for 97,640 undergraduate students from 1987 to 2016.
#'
#' Four data sets are provided, with the student ID and institution variables
#' in common for cross-referencing.
#'
#' \describe{
#'   \item{student}{Demographic data. 
#'       Help page: \code{? student}.}
#'   \item{course}{Academic course data.
#'       Help page: \code{? course}.}
#'   \item{term}{Academic term data.
#'       Help page: \code{? term}.}
#'   \item{degree}{Graduation data.
#'       Help page: \code{? degree}.}
#' }
#'
#' @source Data provided by the MIDFIELD project:
#' \url{https://engineering.purdue.edu/MIDFIELD}
#' @docType package
#' @name midfielddata
NULL

## addresses R CMD check warning "no visible binding"
if (getRversion() >= "2.15.1") {
  utils::globalVariables(c(
    ".", ".x",
    "degree", "student", "term", "course"
  ))
}
