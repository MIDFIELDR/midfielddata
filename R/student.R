#' Student data sample
#'
#' Table of attributes of approximately 98,000 students upon being admitted as 
#' degree-seeking undergraduates. Each observation is a unique student keyed by 
#' student ID. 
#' 
#' The data in midfielddata are a proportionate stratified random sample of 12 
#' institutions in the MIDFIELD research database. However, these are practice 
#' data, not research data---suitable for learning about student-record 
#' analysis, but not for drawing inferences about student performance. 
#' 
#' Students in the \code{student} table have records in the \code{term} table 
#' only if they complete a term; in the \code{course} table if they enroll 
#' in a course; and in the \code{degree} table only if they complete a program. 
#'
#' @format A \code{data.table} with approximately 98,000 observations and 13 
#' variables occupying 19 MB of memory: 
#' \describe{
#'   \item{mcid}{character, anonymized student identifier}
#'   \item{institution}{character, anonymized institution name, e.g., 
#'       Institution A, Institution B, etc.}
#'   \item{transfer}{character, stating whether the student is a First-Time 
#'   in College students or a First-Time Transfer student}
#'   \item{hours_transfer}{numeric, transfer hours accepted at the
#'       institution} 
#'   \item{race}{character, race/ethnicity as self-reported by the student, 
#'        e.g., Asian, Black, Hispanic/LatinX, etc.}
#'   \item{sex}{character, sex as self-reported by the student, values are 
#'       Female, Male, and Unknown}
#'   \item{age}{numeric, age at admission as self-reported by the student}

#'   \item{us_citizen}{character, is the student a US citizen? (Yes or No)}
#'   \item{home_zip}{character, five or nine digit home ZIP code at admission}
#'   \item{high_school}{character, high school code for the last high
#'       school attended before entering a post-secondary institution}
#'   \item{sat_math}{numeric, SAT mathematics test score}
#'   \item{sat_verbal}{numeric, SAT reading test score}
#'   \item{act_comp}{numeric, ACT composite test score}
#' }
#' @source Data provided by the MIDFIELD project:
#' \url{https://engineering.purdue.edu/MIDFIELD}
#' @examples
#' \dontrun{
#' library(data.table)
#' student
#' }
#'
"student"