# Documentation described below using an inline R code chunk, e.g.,
# "`r var_mcid`" or "`r var_institution`", are documented in the
# R/roxygen.R file.


#' Student-level demographic data
#'
#' Student-level demographic information for approximately 98,000 degree-seeking
#' undergraduate students, keyed by student ID. Data at the "student-level"
#' refers to information collected by undergraduate institutions about
#' individual students, for example, age, sex, and race/ethnicity at
#' matriculation.
#'
#' Student data are structured in row-record form, that is, information
#' associated with a particular ID occupies a single row---one record per
#' student.
#'
#' The data in `midfielddata` are a proportionate stratified sample of the
#' MIDFIELD database, but are not suitable for drawing inferences about program
#' attributes or student experiences---`midfielddata` provides practice data,
#' not research data.
#'
#' @name student
#' @docType data
#' @family datasets
#' @keywords datasets
#' @source 2022 [MIDFIELD](https://midfield.online/) database
#' @seealso Package [`midfieldr`](https://midfieldr.github.io/midfieldr/) for
#'   tools and methods for working with MIDFIELD data in `R`.
#'
#' @usage data(student)
#'
#' @format A `data.frame` and `data.table` with 13 variables and 97,555
#'   observations of unique students occupying 18 MB of memory:
#'
#'   \describe{
#'   `r var_mcid`
#'   `r var_race`
#'   `r var_sex`
#'   `r var_institution`
#'   `r var_transfer`
#'   `r var_hours_transfer`
#'   `r var_age_desc`
#'   `r var_us_citizen`
#'   `r var_home_zip`
#'   `r var_high_school`
#'   `r var_sat_math`
#'   `r var_sat_verbal`
#'   `r var_act_comp`
#'   }
#'
#' @examples
#' \dontrun{
#'
#' # Load data
#' data(student)
#'
#' # Select specific rows and columns
#' rows_we_want <- student$mcid == MCID3112192438
#' cols_we_want <- c(mcid, institution, transfer, race, sex, age_desc)
#'
#' # View observations for this ID
#' student[rows_we_want, cols_we_want]
#' }
#'
NULL
