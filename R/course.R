#' Course data sample
#'
#' Table of course-related attributes of approximately 98,000 undergraduates 
#' enrolled in courses at their institutions. Each observation is one 
#' course in one term for one student keyed by student ID and a combination of 
#' course, abbreviation, number, and section. 
#' 
#' The data in midfielddata are a proportionate stratified random sample of 12 
#' institutions in the MIDFIELD research database. However, these are practice 
#' data, not research data---suitable for learning about student-record 
#' analysis, but not for drawing inferences about student performance.
#' 
#' Students in the \code{course} table have records in the 
#' \link[midfielddata]{student} table only if they are admitted as 
#' degree-seeking undergraduates; in the \link[midfielddata]{term} table 
#' only if they complete a term; and in the \link[midfielddata]{degree} 
#' table only if they complete a program. 
#' 
#' Terms are encoded YYYYT, where YYYY is the year of the Fall term that starts 
#' the academic year and T = 1 (Fall), 2 (Winter, quarter systems only), 3 
#' (Spring), and 4 (Summer) or 5 and 6 (Summer sessions 1 and 2). The MIDFIELD 
#' research database also includes terms of one month duration, encoded with 
#' letters A, B, C, etc., though none are included in this sample.
#' 
#' All terms of an academic year are encoded with the same YYYY value. For 
#' example, the terms of the academic year 2009-10 for an institution on a 
#' semester system  are encoded 20091 (Fall) and 20093 (Spring) with summer 
#' terms encoded 20094, 20095 and 20096 depending on the number of sessions.
#' 
#' @format A \code{data.table} with approximately 3.5 M observations and 12 
#' variables occupying 348 MB of memory: 
#' \describe{
#'   \item{mcid}{character, anonymized student identifier}
#'   \item{institution}{character, anonymized institution name, e.g., 
#'       Institution A, Institution B, etc.}
#'   \item{term}{character, academic year and term, format YYYYT}
#'   \item{course}{character, course name, e.g., Chemistry, 
#'       College Algebra, US History, etc.}
#'   \item{abbrev}{character, course alpha identifier, e.g. ENGR, MATH, ENGL, 
#'       composite key (see \code{id})}
#'   \item{number}{character, course numeric identifier, e.g. 101, 3429, 
#'       composite key (see \code{id})}
#'   \item{section}{character, course section identifier, composite key 
#'       (see \code{id})}
#'   \item{type}{character, predominant delivery method for this section, 
#'       e.g., Blended, Honors, Lecture, Seminar, etc.}
#'   \item{faculty_rank}{character, academic rank of the person teaching the 
#'        course, e.g., Assistant Professor, Associate professor, 
#'        Graduate Assistant, Visiting, etc.}
#'   \item{hours_course}{numeric, number of credit-hours for successful course
#'        completion}
#'   \item{pass_fail}{character, whether the course was offered on a pass/fail 
#'        basis, No, Yes, or missing}
#'   \item{grade}{character, course grade, e.g., A+, A, A-, B+, I, NG, etc.}
#' }
#' @source Data provided by the MIDFIELD project:
#' \url{https://engineering.purdue.edu/MIDFIELD}
#' @examples
#' \dontrun{
#' library(data.table)
#' course
#' }
#'
"course"
