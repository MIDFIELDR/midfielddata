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
#'   \item{\link[midfielddata]{student}}{Student data sample. Table of attributes of approximately 
#'   98,000 students upon being admitted as degree-seeking undergraduates. 
#'   Each observation is a unique student keyed by student ID.}
#'   \item{\link[midfielddata]{course}}{Course data sample. Table of course-related attributes of 
#'   approximately 98,000 undergraduates enrolled in courses at their 
#'   institutions. Each observation is one course in one term for one student 
#'   keyed by student ID and a combination of course, abbreviation, number, and 
#'   section.}
#'   \item{\link[midfielddata]{term}}{Term data sample. Table of term-related attributes of 
#'   approximately 96,000 undergraduates for all terms completed at their 
#'   institutions. Each observation is one term for one student keyed by student 
#'   ID and term.}
#'   \item{\link[midfielddata]{degree}}{Degree data sample. Table of degree-related attributes of 
#'   approximately 48,000 undergraduates upon completing their programs. Each 
#'   observation is a unique student keyed by student ID.}
#' }
#'
#' @source Data provided by the MIDFIELD project:
#' \url{https://engineering.purdue.edu/MIDFIELD}
#' @docType package
#' @name midfielddata-package
NULL

## addresses R CMD check warning "no visible binding"
if (getRversion() >= "2.15.1") {
  utils::globalVariables(c(
    ".", ".x",
    "degree", "student", "term", "course"
  ))
}
