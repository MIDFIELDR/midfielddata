
# Testing a data package 
# validation rules?
# missing values?
# min-max ranges?

# Un-comment when manually checking 
# library(tinytest)

test_term <- function() {
  
  # Setup -------------------------------------------------------------------
  su <- function(x) sort(unique(x))
  data(term, package = "midfielddata")
  suppressPackageStartupMessages(library(data.table))
  options(datatable.print.class = TRUE)
  
  # Variable class -----------------------------------------------------------
  ans <- sort(c("mcid", "institution", "term", "cip6", "level", "standing", 
                "coop"))
  expect_equal(sort(names(term[ , .SD, .SDcols = is.character])), ans)
  
  ans <- sort(c("hours_term", "hours_term_attempt", "hours_cumul", 
                "hours_cumul_attempt", "gpa_term", "gpa_cumul"))
  expect_equal(sort(names(term[ , .SD, .SDcols = is.numeric])), ans)
  
  # Should be complete ------------------------------------------------------
  ans = dim(term)
  expect_equal(dim(term[!(is.na(institution) | institution == "")]), ans)
  expect_equal(dim(term[!(is.na(level)       | level == "")])      , ans)
  expect_equal(dim(term[!(is.na(term)        | term == "")])       , ans)
  expect_equal(dim(term[!(is.na(cip6)        | cip6 == "")])       , ans)
  expect_equal(dim(term[!(is.na(mcid)        | mcid == "")])       , ans)
  
  # Possible values ---------------------------------------------------------
  # mcid
  expect_equal(unique(nchar(term$mcid)), 14)
  expect_equal(unique(substr(term$mcid, 1, 4)), "MCID")
  
  # institution
  ans <- sort(c("Institution B", "Institution C", "Institution J"))
  expect_equal(su(term$institution), ans)
  
  # term
  ans <- c("19881", "20181")
  expect_equal(range(term$term), ans)
  
  # cip6
  ans <- c("010000", "540101")
  expect_equal(range(term$cip6), ans)
  
  # level
  ans <- sort(c("01 First-year", "02 Second-year", "03 Third-year", 
                "04 Fourth-year", "05 Fifth-year Plus"))
  expect_equal(su(term$level), ans)
  
  # standing
  ans <- sort(c("Academic Dismissal", "Academic Probation", "Academic Warning", 
                "Good Standing", "No Credit Courses Attempted"))
  expect_equal(su(term$standing), ans)
  
  # coop
  ans <- sort(c("Yes", "No"))
  expect_equal(su(term$coop), ans)
  
  # GPA
  min_x <- min(term$gpa_term, na.rm = TRUE)
  max_x <- max(term$gpa_term, na.rm = TRUE)
  expect_true(min_x >= 0  & max_x <= 4.0)
  
  min_x <- min(term$gpa_cumul, na.rm = TRUE)
  max_x <- max(term$gpa_cumul, na.rm = TRUE)
  expect_true(min_x >= 0  & max_x <= 4.0)
  
  # hours
  min_x <- min(term$hours_term, na.rm = TRUE)
  expect_true(min_x >= 0)
  
  min_x <- min(term$hours_term_attempt, na.rm = TRUE)
  expect_true(min_x >= 0)
  
  min_x <- min(term$hours_cumul, na.rm = TRUE)
  expect_true(min_x >= 0)
  
  min_x <- min(term$hours_cumul_attempt, na.rm = TRUE)
  expect_true(min_x >= 0)
  
}

test_term()
