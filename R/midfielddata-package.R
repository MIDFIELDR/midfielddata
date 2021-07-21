

#' Sample of MIDFIELD Student Unit Record Data
#'
#' Provides a sample of MIDFIELD data for practice working with
#' longitudinal, de-identified, individual student unit records.
#'
#' \href{https://engineering.purdue.edu/MIDFIELD}{MIDFIELD} contains individual
#' Student Unit Record (SUR) data for 1.7M students at 33 US institutions (as
#' of June 2021). MIDFIELD is large enough to permit grouping and summarizing
#' by multiple characteristics, enabling researchers to examine student
#' characteristics (race/ethnicity, sex, prior achievement) and curricular
#' pathways (including coursework and major) by institution and over time.
#'
#' midfieldata provides a sample of these data (for practice) with
#' longitudinal SURs for 98,000 undergraduates at 12 institutions
#' from 1987–2016 organized in four data tables:
#' \itemize{
#'  \item {\href{https://midfieldr.github.io/midfielddata/reference/student.html}{student}}
#'  \item {\href{https://midfieldr.github.io/midfielddata/reference/course.html}{course}}
#'  \item {\href{https://midfieldr.github.io/midfielddata/reference/term.html}{term}}
#'  \item {\href{https://midfieldr.github.io/midfielddata/reference/degree.html}{degree}}
#' }
#'
#' Tools to work with these data are provided in the R package
#' \href{https://midfieldr.github.io/midfieldr/}{midfieldr}.
#'
#'
#' @source Data provided by the MIDFIELD project:
#' \url{https://engineering.purdue.edu/MIDFIELD}
#'
#'
#' @docType package
#' @name midfielddata-package
#'
#'
NULL

# bind names due to NSE notes in R CMD check
if (getRversion() >= "2.15.1") {
  utils::globalVariables(c(
    ".",
    "degree", "student", "term", "course"
  ))
}
