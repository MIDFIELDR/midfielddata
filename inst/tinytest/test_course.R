
# testing a data package 
# min-max ranges?
# validation rules?
# missing values?

library(data.table)
library(tinytest)
library(midfielddata)
data(course)

# Class of columns: numeric or character 
# to get the original classes
# course[, lapply(.SD, class)] 
idx = which(sapply(course, is.character))
expect_equal(
  sort(names(course[ , .SD, .SDcols = idx])), 
  sort(c("mcid", "institution", "term", "course", "abbrev", "number", 
         "section", "type", "faculty_rank", "pass_fail", "grade"))
)
idx = which(sapply(course, is.numeric))
expect_equal(
  sort(names(course[ , .SD, .SDcols = idx])), 
  sort(c("hours_course"))
)

# mcid, number of characters
expect_equal(
  unique(nchar(course$mcid)), 
  11
)
expect_equal(
  unique(substr(course$mcid, 1, 3)), 
  "MID"
)

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
  unique(course[, .(institution)])[order(institution)]
)
