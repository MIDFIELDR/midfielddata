
# Testing a data package 
# validation rules?
# missing values?
# min-max ranges?

# Un-comment when manually checking 
# library(tinytest)

test_degree <- function() {
  
# Setup -------------------------------------------------------------------
  su <- function(x) sort(unique(x))
  data(degree, package = "midfielddata")
  suppressPackageStartupMessages(library(data.table))
  options(datatable.print.class = TRUE)

# Variable class ----------------------------------------------------------
  ans <- sort(c("mcid", "institution", "term_degree", "cip6", "degree"))
  expect_equal(sort(names(degree[ , .SD, .SDcols = is.character])), ans)

# Should be complete ------------------------------------------------------
  ans = dim(degree)
  expect_equal(dim(degree[!(is.na(institution) | institution == "")]), ans)
  expect_equal(dim(degree[!(is.na(term_degree) | term_degree == "")]), ans)
  expect_equal(dim(degree[!(is.na(degree)      | degree == "")])     , ans)
  expect_equal(dim(degree[!(is.na(mcid)        | mcid == "")])       , ans)
  expect_equal(dim(degree[!(is.na(cip6)        | cip6 == "")])       , ans)
  
# Possible values ---------------------------------------------------------
  # mcid
  expect_equal(unique(nchar(degree$mcid)), 14)
  expect_equal(unique(substr(degree$mcid, 1, 4)), "MCID")
  
  # institution
  ans <- sort(c("Institution B", "Institution C", "Institution J"))
  expect_equal(su(degree$institution), ans)
  
  # term_degree
  ans <- c("19881", "20191")
  expect_equal(range(degree$term_degree), ans)
  
  # cip6
  ans <- c("010101", "540101")
  expect_equal(range(degree$cip6), ans)

  # degree
  ans <- nrow(degree)
  expect_equal(sum(degree$degree %ilike% "bachelor"), ans)
  expect_equal(sum(degree$degree %ilike% "master"), 0)
  
}

test_degree()
