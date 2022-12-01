
# Testing a data package 
# validation rules?
# missing values?
# min-max ranges?

# Un-comment when manually checking 
# library(tinytest)

test_student <- function() {
  
  # Setup -------------------------------------------------------------------
  su <- function(x) sort(unique(x))
  data(student, package = "midfielddata")
  suppressPackageStartupMessages(library(data.table))
  options(datatable.print.class = TRUE)
  
  # Variable class ----------------------------------------------------------
  ans <-sort(c("mcid", "institution", "transfer", "race", "sex", "age_desc", 
               "us_citizen", "home_zip", "high_school"))
  expect_equal(sort(names(student[ , .SD, .SDcols = is.character])), ans)
  
  ans <- sort(c("hours_transfer", "sat_math", "sat_verbal", "act_comp"))
  expect_equal(sort(names(student[ , .SD, .SDcols = is.numeric])), ans)
  
  # Should be complete ------------------------------------------------------
  ans = dim(student)
  expect_equal(dim(student[!(is.na(institution) | institution == "")]), ans)
  expect_equal(dim(student[!(is.na(transfer)    | transfer == "")])   , ans)
  expect_equal(dim(student[!(is.na(mcid)        | mcid == "")])       , ans)
  expect_equal(dim(student[!(is.na(race)        | race == "")])       , ans)
  expect_equal(dim(student[!(is.na(sex)         | sex == "")])        , ans)
  
  # Possible values ---------------------------------------------------------
  # mcid
  expect_equal(unique(nchar(student$mcid)), 14)
  expect_equal(unique(substr(student$mcid, 1, 4)), "MCID")
  
  # institution
  ans <- sort(c("Institution B", "Institution C", "Institution J"))
  expect_equal(su(student$institution), ans)
  
  # race
  ans <- sort(c("Asian", "Black", "International", "Latine", "Native American", 
           "Other/Unknown", "White")) 
  expect_equal(su(student$race), ans)
  
  # sex
  ans <- sort(c("Female", "Male", "Unknown")) 
  expect_equal(su(student$sex), ans)
  
  # age_desc
  ans <- sort(c("25 and Older", "Under 25")) 
  expect_equal(su(student$age_desc), ans)
  
  # transfer
  ans <- sort(c("First-Time in College", "First-Time Transfer"))
  expect_equal(su(student[, transfer]), ans)
  
  # citizen
  ans <- sort(c("Yes", "No"))
  expect_equal(su(student[, us_citizen]), ans)
  
  #  home_zip
  min_x <- min(student$home_zip, na.rm = TRUE)
  max_x <- max(student$home_zip, na.rm = TRUE)
  expect_true(min_x >= "00000"  & max_x <= "99950")
  
  # hours
  min_x <- min(student$hours_transfer, na.rm = TRUE)
  expect_true(min_x >= 0)
  
  # test scores
  expect_true(
    min(student[, sat_math], na.rm = TRUE) > 0
  )
  expect_true(
    max(student[, sat_math], na.rm = TRUE) <= 800
  )
  expect_true(
    min(student[, sat_verbal], na.rm = TRUE) > 0
  )
  expect_true(
    max(student[, sat_verbal], na.rm = TRUE) <= 800
  )
  expect_true(
    max(student[, act_comp], na.rm = TRUE) <= 36
  )
  expect_true(
    min(student[, act_comp], na.rm = TRUE) >= 1
  )
  
}

test_student()
