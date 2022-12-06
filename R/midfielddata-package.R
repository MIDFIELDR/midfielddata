
#' MIDFIELD Data Sample
#'
#' This data package contains anonymized student-level records for 98,000
#' undergraduates from three US institutions from 1988 through 2018 organized in
#' four data tables keyed by student ID. "Student-level" data refers to
#' information collected by undergraduate institutions about individual students
#' including demographics, programs, academic standing, courses, grades, and
#' degrees. These data are a proportionate stratified sample of the MIDFIELD
#' database, but are not suitable for drawing inferences about program
#' attributes or student experiences---'midfielddata' provides practice
#' data, not research data.
#'
#' @name midfielddata-package
#' @docType package
#' @family package
#' @source 2022 [MIDFIELD](https://midfield.online/) database
#' @seealso Package ['midfieldr'](https://midfieldr.github.io/midfieldr/)
#'   for tools and methods for working with MIDFIELD data in 'R'.
#'   
NULL

# bind names due to NSE notes in R CMD check
if (getRversion() >= "2.15.1") {
  utils::globalVariables(c(
    ".",
    "course", "degree", "student", "term"
  ))
}
