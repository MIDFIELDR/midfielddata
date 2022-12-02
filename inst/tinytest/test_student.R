
# Testing a data package 
# validation rules?
# missing values?
# min-max ranges?

# Un-comment when manually checking 
# library(tinytest)

test_student <- function() {
  
  # Setup -------------------------------------------------------------------
  data(student, package = "midfielddata")
  suppressPackageStartupMessages(library(data.table))
  options(datatable.print.class = TRUE)
  
  # Variable class ----------------------------------------------------------
  ans <-sort(c("mcid", "institution", "transfer", "race", "sex", "age_desc", 
               "us_citizen", "home_zip", "high_school"))
  expect_equal(sort(names(student[ , .SD, .SDcols = is.character])), ans)
  
  ans <- sort(c("hours_transfer", "sat_math", "sat_verbal", "act_comp"))
  expect_equal(sort(names(student[ , .SD, .SDcols = is.numeric])), ans)
  
  # Possible values ---------------------------------------------------------
  #  home_zip
  min_x <- min(student$home_zip, na.rm = TRUE)
  max_x <- max(student$home_zip, na.rm = TRUE)
  expect_true(min_x >= "00000"  & max_x <= "99950")
  
  # hours are positive
  min_x <- min(student$hours_transfer, na.rm = TRUE)
  expect_true(min_x >= 0)
  
  # test scores within min/max ranges
  min_x <- min(student$sat_math, na.rm = TRUE)
  max_x <- max(student$sat_math, na.rm = TRUE)
  expect_true(min_x >= 0  & max_x <= 800)
  
  min_x <- min(student$sat_verbal, na.rm = TRUE)
  max_x <- max(student$sat_verbal, na.rm = TRUE)
  expect_true(min_x >= 0  & max_x <= 800)
  
  min_x <- min(student$act_comp, na.rm = TRUE)
  max_x <- max(student$act_comp, na.rm = TRUE)
  expect_true(min_x >= 0  & max_x <= 36)
  
}

test_student()
