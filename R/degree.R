#' Degree data sample
#' 
#' Table of degree-related attributes of approximately 48,000 undergraduates 
#' upon completing their programs. Each observation is a unique student 
#' keyed by student ID. 
#' 
#' The data in midfielddata are a proportionate stratified random sample of 12 
#' institutions in the MIDFIELD research database. However, these are practice 
#' data, not research data---suitable for learning about student-record 
#' analysis, but not for drawing inferences about student performance.  
#' 
#' Students in the \code{degree} table also have records in the \code{student}, 
#' \code{term}, and \code{course} tables. 
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
#' @format A \code{data.table} with approximately 48,000 observations and 
#' 5 variables occupying 10.2 MB of memory.
#' \describe{
#'   \item{mcid}{character, anonymized student identifier}
#'   \item{institution}{character, anonymized institution name, e.g., 
#'       Institution A, Institution B, etc.}
#'   \item{term}{character, academic year and term, format YYYYT, in which a 
#'        student completes their program}
#'   \item{cip6}{character, 6-digit CIP code of program in which a student 
#'        earns a degree}
#'   \item{degree}{character, type of degree awarded, e.g., Bachelor's Degree, 
#'        Bachelor of Arts, Bachelor of Science, etc.}
#' }
#' @source Data provided by the MIDFIELD project:
#' \url{https://engineering.purdue.edu/MIDFIELD}
#' @examples
#' \dontrun{
#' library(data.table)
#' degree
#' }
#'
"degree"