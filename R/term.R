# Documentation described below using an inline R code chunk, e.g.,
# "`r var_mcid`" or "`r var_institution`", are documented in the
# R/roxygen.R file.


#' Student-level term data
#'
#' Student-level term information for approximately 98,000 undergraduates, keyed
#' by student ID. Data at the "student-level" refers to information collected by
#' undergraduate institutions about individual students, for example, program
#' code, academic standing, and grade point average by term.
#'
#' Term data are structured in block-record form, that is, records associated
#' with a particular ID can span multiple rows---one record per student per
#' term.
#'
#' Terms are encoded `YYYYT`, where `YYYY` is the year at the start of the
#' academic year and `T` encodes the semester or quarter within an academic year
#' as Fall (`1`), Winter (`2`), Spring (`3`), and Summer (`4`, `5`, and `6`).
#' For example, for academic year 1995--96, Fall 95--96 is encoded `19951`,
#' Spring 95--96 is encoded `19953`, and the first Summer 95-96 term is encoded
#' `19954`. The source database includes special month-long sessions encoded
#' with letters `A`, `B`, `C`, etc., though none are included in this sample.
#'
#' For program codes, `midfielddata` uses the 2010 version of the Classification
#' of Instructional Programs (CIP). If the `midfieldr` package is installed and
#' loaded, type `?cip` for details.
#'
#' The data in `midfielddata` are a proportionate stratified sample of the
#' MIDFIELD database, but are not suitable for drawing inferences about program
#' attributes or student experiences---`midfielddata` provides practice data,
#' not research data.
#'
#' @name term
#' @docType data
#' @family datasets
#' @keywords datasets
#' @source 2022 [MIDFIELD](https://midfield.online/) database
#' @seealso Package [`midfieldr`](https://midfieldr.github.io/midfieldr/) for
#'   tools and methods for working with MIDFIELD data in `R`.
#'
#' @usage data(term)
#'
#' @format A `data.frame` and `data.table` with 13 variables and approximately
#'   640,000 observations of 97,555 unique students occupying 73 MB of memory:
#'
#'   \describe{
#'   `r var_mcid`
#'   `r var_institution`
#'   `r var_term`
#'   `r var_cip6_term`
#'   `r var_level`
#'   `r var_standing`
#'   `r var_coop`
#'   `r var_hours_term`
#'   `r var_hours_term_attempt`
#'   `r var_hours_cumul`
#'   `r var_hours_cumul_attempt`
#'   `r var_gpa_term`
#'   `r var_gpa_cumul`
#'   }
#'
#' @examples
#' \dontrun{
#'
#' # Load data
#' data(term)
#'
#' # Select specific rows and columns
#' rows_we_want <- term$mcid == "MCID3112192438"
#' cols_we_want <- c("mcid", "term", "cip6", "level", "standing", "gpa_cumul")
#'
#' # View observations for this ID
#' term[rows_we_want, cols_we_want]
#' }
#'
NULL
