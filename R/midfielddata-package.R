
#' Sample of MIDFIELD Student Unit Record Data
#'
#' An 'R' data package for distributing practice Student Unit Record (SUR) data
#' and documentation. The source is the MIDFIELD database, which contains (as of
#' October, 2022) individual SUR data for 1.7M undergraduate students at 19 US
#' institutions from 1987 through 2018. 'midfielddata' provides a proportionate
#' stratified sample of MIDFIELD data: anonymized SURs for approximately 98,000
#' students at three US institutions from 1988 through 2018. Data are organized
#' in four tables: `student`, `course`, `term`, and `degree`.
#'
#' The data in 'midfielddata' are practice data, suitable for learning to work
#' with SURs generally. Unlike the MIDFIELD source data, the data tables in
#' 'midfielddata' are not research data; they are not suitable for drawing
#' inferences about program attributes or student experiences.
#'
#' The \href{https://midfieldr.github.io/midfieldr/}{'midfieldr'} package
#' provides tools for working with 'midfielddata' practice data as well as the
#' MIDFIELD research data.
#'
#' @source Data provided by the MIDFIELD project: \url{https://midfield.online/}
#' @docType package
#' @name midfielddata-package
NULL

# bind names due to NSE notes in R CMD check
if (getRversion() >= "2.15.1") {
  utils::globalVariables(c(
    ".",
    "course", "degree", "student", "term"
  ))
}
