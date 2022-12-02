
# Testing a data package 
# validation rules?
# missing values?
# min-max ranges?

# Un-comment when manually checking 
library(tinytest)

test_course <- function() {
  
  # Setup -------------------------------------------------------------------
  data(course, package = "midfielddata")
  suppressPackageStartupMessages(library(data.table))
  options(datatable.print.class = TRUE)
  
  # Variable class -----------------------------------------------------------
  ans <- sort(c("mcid", "institution", "term_course", "course", "abbrev", 
                "number", "section", "type", "faculty_rank", "grade", 
                "discipline_midfield"))
  expect_equal(sort(names(course[ , .SD, .SDcols = is.character])), ans)
  
  ans <- "hours_course"
  expect_equal(sort(names(course[ , .SD, .SDcols = is.numeric])), ans)

  # Possible values ---------------------------------------------------------
  # term_course
  min_x <- min(course$term_course, na.rm = TRUE)
  expect_true(min_x >= "19871")
  expect_equal(unique(nchar(course$term_course)), 5)

  # hours
  min_x <- min(course$hours_course, na.rm = TRUE)
  expect_true(min_x >= 0)
  
}

test_course()
