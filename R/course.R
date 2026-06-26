# Documentation described below using an inline R code chunk, e.g.,
# "`r var_mcid`" or "`r var_institution`", are documented in the
# R/roxygen.R file.


#' Student-level course data
#'
#' Student-level course information for approximately 98,000 undergraduates,
#' keyed by student ID. Data at the "student-level" refers to information
#' collected by undergraduate institutions about individual students, for
#' example, course name and number, credit hours, and student grades.
#'
#' Course data are structured in block-record form, that is, records associated
#' with a particular ID can span multiple rows---one record per student per
#' course per term.
#'
#' Terms are encoded `YYYYT`, where `YYYY` is the year at the start of the
#' academic year and `T` encodes the semester or quarter within an academic year
#' as Fall (`1`), Winter (`2`), Spring (`3`), and Summer (`4`, `5`, and `6`).
#' For example, for academic year 1995--96, Fall 95--96 is encoded `19951`,
#' Spring 95--96 is encoded `19953`, and the first Summer 95-96 term is encoded
#' `19954`. The source database includes special month-long sessions encoded
#' with letters `A`, `B`, `C`, etc., though none are included in this sample.
#'
#' The possible values of the `grade` variable includes `NG` for "no grade
#' given", which is not the same as `W` indicating a withdrawal. For example,
#' a lab course may be a mandatory co-requisite for a lecture course, but a
#' grade is given for the lecture course and the lab grade is recorded as `NG`.
#'
#' The data in `midfielddata` are a proportionate stratified sample of the
#' MIDFIELD database, but are not suitable for drawing inferences about program
#' attributes or student experiences---`midfielddata` provides practice data,
#' not research data.
#'
#' @name course
#' @docType data
#' @family datasets
#' @keywords datasets
#' @source 2022 [MIDFIELD](https://midfield.online/) database
#' @seealso Package [`midfieldr`](https://midfieldr.github.io/midfieldr/)
#'   for tools and methods for working with MIDFIELD data in `R`.
#'
#' @usage data(course)
#'
#' @format A `data.frame` and `data.table` with 12 variables and approximately
#'   3.3M observations of 97,555 unique students occupying 325 MB of memory:
#'
#'   \describe{
#'   `r var_mcid`
#'   `r var_term`
#'   `r var_abbrev`
#'   `r var_number`
#'   `r var_institution`
#'   `r var_course`
#'   `r var_section`
#'   `r var_type`
#'   `r var_faculty_rank`
#'   `r var_hours_course`
#'   `r var_grade`
#'   `r var_discipline_midfield`
#'   }
#'
#' @examples
#' \dontrun{
#'
#' # Load data
#' data(course)
#'
#' # Select specific rows and columns
#' rows_we_want <- course$mcid == MCID3112192438
#' cols_we_want <- c(mcid, term_course, course, grade)
#'
#' # View observations for this ID
#' course[rows_we_want, cols_we_want]
#' }
#'
NULL
