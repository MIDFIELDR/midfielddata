
# Testing a data package 
# validation rules?
# missing values?
# min-max ranges?

# Un-comment when manually checking 
# library(tinytest)

test_degree <- function() {
  
# Setup -------------------------------------------------------------------
  data(degree, package = "midfielddata")
  suppressPackageStartupMessages(library(data.table))
  options(datatable.print.class = TRUE)

# Variable class ----------------------------------------------------------
  ans <- sort(c("mcid", "institution", "term_degree", "cip6", "degree"))
  expect_equal(sort(names(degree[ , .SD, .SDcols = is.character])), ans)
  
# Possible values ---------------------------------------------------------
  
  # term_degree
  min_x <- min(degree$term_degree, na.rm = TRUE)
  expect_true(min_x >= "19871")
  expect_equal(unique(nchar(degree$term_degree)), 5)
  
  # cip6
  min_x <- min(degree$cip6, na.rm = TRUE)
  max_x <- max(degree$cip6, na.rm = TRUE)
  expect_true(min_x >= "000000"  & max_x <= "999999")
  expect_equal(unique(nchar(degree$cip6)), 6)

  # degree
  expect_equal(sum(degree$degree %ilike% "master"), 0)
  
}

test_degree()
