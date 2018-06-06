#' @importFrom tibble tibble
NULL

#' Demographic data for 98,000 undergraduates
#'
#' A dataset of demographic attributes of 97,640  undergraduates matriculating in US universities from from 1987 to 2016, sampled from the MIDFIELD database.
#'
#' @format A data frame (tibble) with 97,064 observations and 15 variables,  occupying 19 MB of memory. Each observation is a unique student. The variables are:
#'
#' \describe{
#'   \item{ID}{Unique, anonymized MIDFIELD student identifier.}
#'   \item{institution}{Anonymized institution name.}
#'   \item{CIP6}{Six-digit CIP code of the program into which the student
#'        matriculated.}
#'   \item{term_enter}{Academic year and term the student first entered the
#'        institution.}
#'   \item{transfer}{Did the student transfer into the institution? (Y = Yes
#'       or N = No).}
#'   \item{hours_transfer}{Transfer hours accepted at your institution.}
#'   \item{sex}{Sex (M = Male, F = Female) as self-reported by the student.}
#'   \item{race}{Ethnicity as self-reported by the student and as reported
#'       to IPEDS.}
#'   \item{age}{Age at matriculation as self-reported by the student.}
#'   \item{US_citizen}{Is the student a US citizen? (Y = Yes or N = No).}
#'   \item{home_ZIP}{Five or nine digit home ZIP code at time of entry.}
#'   \item{high_school}{High school code for the last high school attended
#'        before entering a post-secondary institution}
#'   \item{SAT_math}{SAT mathematics test score, used as part of the
#'       admissions process.}
#'   \item{SAT_verbal}{SAT reading test score, used as part of the
#'   admissions process.}
#'   \item{ACT_comp}{ACT composite test score, used as part of the
#'       admissions process.}
#' }
#' @source \url{https://engineering.purdue.edu/MIDFIELD}.
#' @examples
#' \dontrun{
#' tibble::glimpse(midfieldstudents)
#' }
"midfieldstudents"
