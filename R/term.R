#' Term data sample
#'
#' Table of term-related attributes of approximately 96,000 undergraduates for 
#' all terms completed at their institutions. Each observation is one term for 
#' one student keyed by student ID and term. 
#' 
#' The data in midfielddata are a proportionate stratified random sample of 12 
#' institutions in the MIDFIELD research database. However, these are practice 
#' data, not research data---suitable for learning about student-record 
#' analysis, but not for drawing inferences about student performance.
#' 
#' Students in the \code{term} table have records in the \code{student} table 
#' only if they are admitted as degree-seeking undergraduates; in the 
#' \code{course} table if they enroll in a course; and in the \code{degree} 
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
#' Classification of Instructional Programs (CIP) codes are from the 2010 CIP. 
#' See midfieldr \code{\link[midfieldr:cip]{cip}} for more information. 
#'
#' @format A \code{data.table} with approximately 730,000 observations and 
#' 13 variables occupying 82 MB of memory: 
#' \describe{
#'   \item{mcid}{character, anonymized student identifier}
#'   \item{institution}{character, anonymized institution name, e.g., 
#'       Institution A, Institution B, etc.}
#'   \item{term}{character, academic year and term, format YYYYT}
#'   \item{cip6}{character, 6-digit CIP code of program in which a student is 
#'       enrolled in a term}
#'   \item{level}{character, 01 Freshman, 02 Sophomore, etc.}
#'   \item{standing}{character, academic standing, e.g., 
#'       Good Standing, Academic Suspension, etc.}
#'   \item{coop}{character, cooperative eductaion term, Yes or No}   
#'   \item{hours_term}{numeric, credit hours earned in the term}
#'   \item{hours_term_attempt}{numeric, credit hours attempted in the term}
#'   \item{hours_cumul}{numeric, cumulative credit hours earned}
#'   \item{hours_cumul_attempt}{numeric, cumulative credit hours attempted}
#'   \item{gpa_term}{numeric, term grade point average}
#'   \item{gpa_cumul}{numeric, cumulative grade point average}
#' }
#' @source Data provided by the MIDFIELD project:
#' \url{https://engineering.purdue.edu/MIDFIELD}
#' @examples
#' \dontrun{
#' library(data.table)
#' term
#' }
#'
"term"
