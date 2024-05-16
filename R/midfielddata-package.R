
#' @keywords internal
"_PACKAGE"  
NULL

# bind names due to NSE notes in R CMD check
if (getRversion() >= "2.15.1") {
  utils::globalVariables(c(
    ".",
    "course", "degree", "student", "term"
  ))
}
