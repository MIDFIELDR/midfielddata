
#' Student-level demographic data
#'
#' Student-level demographic information for approximately 98,000 degree-seeking
#' undergraduate students, keyed by student ID. "Student-level" data refers to
#' information collected by undergraduate institutions about individual
#' students, for example, age, sex, and race/ethnicity at matriculation.
#'
#' Student data are structured in row-record form, that is, information
#' associated with a particular ID occupies a single row---one record per
#' student.
#'
#' The data in \pkg{midfielddata} are a proportionate stratified sample of the
#' MIDFIELD database, but are not suitable for drawing inferences about program
#' attributes or student experiences---\pkg{midfielddata} provides practice
#' data, not research data.
#' 
#' @docType data
#' @family datasets
#' @keywords datasets
#' @source 2022 [MIDFIELD](https://midfield.online/) database
#' @seealso Package [\pkg{midfieldr}](https://midfieldr.github.io/midfieldr/)
#'   for tools and methods for working with MIDFIELD data in 'R'.
#'
#' @usage data(student)
#'
#' @format A `data.frame` and `data.table` with 13 variables and 97,555
#'   observations of unique students occupying 18 MB of memory:
#'
#'   \describe{
#'
#'   \item{mcid}{Character, anonymized student identifier, e.g.,
#'   `"MCID3111142225"`.}
#'
#'   \item{institution}{Character, anonymized institution name, e.g.,
#'   `"Institution B"`.}
#'
#'   \item{transfer}{Character, transfer status, possible values are
#'   `"First-Time in College"`, `"First-Time Transfer"`.}
#'
#'   \item{hours_transfer}{Numeric, number of credit hours transferred (or
#'   `NA`).}
#'
#'   \item{race}{Character, race/ethnicity, e.g., `"Asian"`, `"Black"`,
#'   `"International"`, `"Latine"`, etc.}
#'
#'   \item{sex}{Character, sex, possible values are `"Female"`, `"Male"`,
#'   `"Unknown"`.}
#'
#'   \item{age_desc}{Character, age group, possible values are `"25 and Older"`,
#'   `"Under 25"`.}
#'
#'   \item{us_citizen}{Character, US citizenship, possible values are `"No"`,
#'   `"Yes"`.}
#'
#'   \item{home_zip}{Character, home ZIP code (or `NA`), e.g., `"02056"`,
#'   `"20170"`, `"51301"`, `"80129"`, etc.}
#'
#'   \item{high_school}{Character, code for the last high school attended before
#'   admission (or `NA`), e.g., `"060075"`, `"210512"`, `"431800"`, `"502195"`,
#'   etc.}
#'
#'   \item{sat_math}{Numeric, SAT mathematics test score (or `NA`).}
#'
#'   \item{sat_verbal}{Numeric, SAT reading test score (or `NA`).}
#'
#'   \item{act_comp}{Numeric, ACT composite test score (or `NA`).}
#'
#'   }
#'   
#' @examples
#' \dontrun{
#' 
#' # Load data
#' data(student)
#' 
#' # Select specific rows and columns
#' rows_we_want <- student$mcid == "MCID3112192438"
#' cols_we_want <- c("mcid", "institution", "transfer", "race", "sex", "age_desc")
#' 
#' # View observations for this ID 
#' student[rows_we_want, cols_we_want]
#' 
#' }
#' 
"student"
