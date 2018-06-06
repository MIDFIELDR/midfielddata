#' Student Record Data for 98,000 Undergraduates
#'
#' A data package with a stratified sample from the MIDFIELD database. 
#' 
#' The data comprise student records from registrars at participating US 
#' universities, including demographic, term, course, and degree 
#' information for 97,640 undergraduate students from 1987 to 2016. 
#' 
#' Four data sets are provided, with the student ID and institution variables 
#' in common for cross-referencing.   
#' 
#' \describe{
#'   \item{midfieldstudents}{Demographic data. 
#'     Help page: \code{?midfieldstudents}.}
#'   \item{midfieldcourses}{Academic course data. 
#'     Help page: \code{?midfieldcourses}.}
#'   \item{midfieldterms}{Academic term data. 
#'     Help page: \code{?midfieldterms}.}
#'   \item{midfielddegrees}{Graduation data. 
#'     Help page: \code{?midfielddegrees}.}
#' }
#'
#' @source Data provided by the MIDFIELD project:
#' \url{https://engineering.purdue.edu/MIDFIELD}
#' @docType package
#' @name midfielddata
#' @examples
#' \dontrun{
#' tibble::glimpse(midfieldcourses)
#' tibble::glimpse(midfielddegrees)
#' tibble::glimpse(midfieldstudents)
#' tibble::glimpse(midfielddegrees)
#' }
NULL

## addresses R CMD check warning "no visible binding"
if (getRversion() >= "2.15.1") {
  utils::globalVariables(c(
    ".", ".x", 
    "midfielddegrees", "midfieldstudents", "midfieldterms", "midfieldcourses"
  ))
}
