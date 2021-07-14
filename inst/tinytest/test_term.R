
# testing a data package 
# min-max ranges?
# validation rules?
# missing values?

library(data.table)
library(tinytest)
library(midfielddata)
data(term)

# Class of columns: numeric or character 
# to get the original classes
# term[, lapply(.SD, class)] 
idx = which(sapply(term, is.character))
expect_equal(
  sort(names(term[ , .SD, .SDcols = idx])), 
  sort(c("mcid", "institution", "term", "cip6", "level", "standing", "coop"))
)
idx = which(sapply(term, is.numeric))
expect_equal(
  sort(names(term[ , .SD, .SDcols = idx])), 
  sort(c("gpa_cumul", "gpa_term", "hours_cumul", "hours_cumul_attempt", 
         "hours_term", "hours_term_attempt"))
)

# mcid, number of characters
expect_equal(
  unique(nchar(term$mcid)), 
  11
)
expect_equal(
  unique(substr(term$mcid, 1, 3)), 
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
  unique(term[, .(institution)])[order(institution)]
)
