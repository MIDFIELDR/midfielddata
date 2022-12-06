
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
#'
#'   \item{`mcid`}{Character, anonymized student identifier, e.g., 
#'   `MCID3111142225`.}
#'
#'   \item{`institution`}{Character, anonymized institution name, e.g., 
#'   `Institution B`.}
#'
#'   \item{`term_course`}{Character, academic year and term, format `YYYYT`.}
#'
#'   \item{`course`}{Character, course name, e.g., `Astrophysics III`, 
#'   `Calculus For Social Science And Business`, `Corp Financial Rprtng 1`, 
#'   `Environmental Sanitation II`, `Fitness and Wellness`, 
#'   `Introductory Astronomy 2`, `Our Changing Environment`, etc.}
#'
#'   \item{`abbrev`}{Character, course alpha identifier, e.g. `AA`, `MATH`, 
#'   `ACCT`, `EH`, `HES`, `ASTR`, etc.}
#
#'   \item{`number`}{Character, course numeric identifier, e.g. `1104`, `1209`, 
#'   `228`, `4047`, etc.}
#'
#'   \item{`section`}{Character, course section identifier, from one to four 
#'   characters, e.g., `1`, `2`, `01`, `14`, `001`, `040`, `785`, 
#'   `H02`, `R01`, `300E`, `888R`, etc.}
#'
#'   \item{`type`}{Character, predominant delivery method for this section, e.g.,
#'   `Blended`, `Distance Education`, `Face-to-Face`, `Online`, etc.}
#'
#'   \item{`faculty_rank`}{Character, academic rank of the person teaching the
#'   course, e.g., `Assistant Professor`, `Associate Professor`, 
#'   `Graduate Assistant`, `Visiting Faculty`, etc.}
#'
#'   \item{`hours_course`}{Numeric, number of credit-hours for successful course
#'   completion.}
#'
#'   \item{`grade`}{Character, course grade, e.g., `A+`, `A`, `A-`, `B+`, 
#'   `I`, `NG`, etc.}
#'   
#'   \item{`discipline_midfield`}{Character, a variable for grouping courses by
#'   academic discipline assigned by the MIDFIELD data curator, e.g., 
#'   `Anthropology`, `Business`, `Computer Science`, 
#'   `Engineering`, `Language and Literature`, `Mathematics`, 
#'   `Visual and Performing Arts`, etc.}
#'   
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
#' 
#' }
#' 
NULL
