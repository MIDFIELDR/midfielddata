
# testing a data package 
# min-max ranges?
# validation rules?
# missing values?

library(data.table)
library(tinytest)
library(midfielddata)
data(student)

# Class of columns: numeric or character 
# student[, lapply(.SD, class)] # to get the original classes
char_idx = which(sapply(student, is.character))
expect_equal(
  sort(names(student[ , .SD, .SDcols = char_idx])), 
  sort(c("mcid", "institution", "transfer", "race", "sex", "us_citizen", 
    "home_zip", "high_school"))
)
num_idx = which(sapply(student, is.numeric))
expect_equal(
  sort(names(student[ , .SD, .SDcols = num_idx])), 
  sort(c("hours_transfer", "age", "sat_math", "sat_verbal", "act_comp"))
)

# mcid, number of characters
expect_equal(
  unique(nchar(student$mcid)), 
  11
)
expect_equal(
  unique(substr(student$mcid, 1, 3)), 
  "MID"
)

# inst <- unique(student[, .(institution)])
# inst <- inst[order(institution)]
# cat(wrapr::draw_frame(inst))
# Possible institution names
inst <- wrapr::build_frame(
  "institution"   |
    "Institution A" |
    "Institution B" |
    "Institution C" |
    "Institution D" |
    "Institution E" |
    "Institution F" |
    "Institution G" |
    "Institution H" |
    "Institution J" |
    "Institution K" |
    "Institution L" |
    "Institution M" )
setDT(inst)
expect_equal(
  inst, 
  unique(student[, .(institution)])[order(institution)]
)

# Values of transfer
expect_equal(
  sort(unique(student[, transfer])), 
  sort(c("First-Time in College", "First-Time Transfer"))
)

# Range of test scores
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




unique(nchar(student$mcid))
