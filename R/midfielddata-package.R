
#' MIDFIELD Data Sample
#'
#' Provides a data sample for practice working with individual undergraduate
#' student unit records (registrar's data) in 'R'. Data are organized in four
#' data tables --- `student`, `course`, `term`, and `degree` --- providing
#' anonymized records for approximately 98,000 students at three US institutions
#' from 1988 through 2018, keyed by student ID. These data are a proportionate
#' stratified sample of the MIDFIELD database. However, unlike MIDFIELD data,
#' the data in 'midfielddata' are not suitable for drawing inferences about
#' program attributes or student experiences --- these are practice data, not
#' research data.
#'
#' [MIDFIELD](https://midfield.online/) is a database containing (as of October,
#' 2022) individual Student Unit Records (SURs) for 1.7M undergraduate students
#' at 19 US institutions from 1987 through 2018. Access to the MIDFIELD research
#' database is currently limited to MIDFIELD partner institutions, but a sample
#' of the data is available in the 'midfielddata' package.
#'
#' ['midfieldr'](https://midfieldr.github.io/midfieldr/) is a companion 'R'
#' package that provides tools and detailed procedures for working with MIDFIELD
#' research data and with 'midfielddata' practice data.
#'
#' This work is supported by a grant from the US National Science Foundation
#' (EEC 1545667).
#'
#' @source Data provided by MIDFIELD: \url{https://midfield.online/}.
#' @docType package
#' @family package
#' @name midfielddata-package
#' 
NULL

# bind names due to NSE notes in R CMD check
if (getRversion() >= "2.15.1") {
  utils::globalVariables(c(
    ".",
    "course", "degree", "student", "term"
  ))
}
