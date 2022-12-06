
#' Student-level degree data
#'
#' Student-level degree information for approximately 50,000 undergraduates
#' earning degrees, keyed by student ID. Data at the "student-level" refers to
#' information collected by undergraduate institutions about individual
#' students, for example, institution, program, term, and baccalaureate degree.
#'
#' Degree data are structured in block-record form, that is, records associated
#' with a particular ID can span multiple rows---one record per student per
#' degree. Multiple degrees can occur in the same term or in different terms.
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
#' @name degree
#' @docType data
#' @family datasets
#' @keywords datasets
#' @source 2022 [MIDFIELD](https://midfield.online/) database
#' @seealso Package [`midfieldr`](https://midfieldr.github.io/midfieldr/)
#'   for tools and methods for working with MIDFIELD data in `R`.
#' 
#' @usage data(degree)
#'
#' @format A `data.frame` and `data.table` with 5 variables and 49,543 
#'   observations of unique students occupying 6 MB of memory:
#'
#'   \describe{
#'
#'   \item{`mcid`}{Character, anonymized student identifier, e.g., 
#'   `MCID3111142225`.}
#'
#'   \item{`institution`}{Character, anonymized institution name, e.g., 
#'   `Institution B`.}
#'
#'   \item{`term_degree`}{Character, academic year and term, format `YYYYT`, in
#'   which a student completes their program.}
#'
#'   \item{`cip6`}{Character, 6-digit CIP code of program in which a student earns
#'   a degree, e.g., `090101`, `141201`, `260901`, `420101`, etc.}
#'
#'   \item{`degree`}{Character, type of degree awarded, e.g., 
#'   `Bachelor of Arts in Geography`, `Bachelor of Science in Finance`, 
#'   etc.}
#'
#'   }
#'   
#' @examples
#' \dontrun{
#' 
#' # Load data
#' data(degree)
#' 
#' # Select specific rows and columns
#' rows_we_want <- degree$mcid == MCID3112192438
#' cols_we_want <- c(mcid, term_degree, cip6, degree)
#' 
#' # View observations for this ID 
#' degree[rows_we_want, cols_we_want]
#' 
#' }
#' 
NULL
