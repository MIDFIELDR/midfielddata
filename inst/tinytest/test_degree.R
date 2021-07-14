
# testing a data package 
# min-max ranges?
# validation rules?
# missing values?

library(data.table)
library(tinytest)
library(midfielddata)
data(degree)

# Class of columns: numeric or character 
# to get the original classes
# degree[, lapply(.SD, class)] 

char_idx = which(sapply(degree, is.character))
expect_equal(
  sort(names(degree[ , .SD, .SDcols = char_idx])), 
  sort(c("mcid", "institution", "term", "cip6", "degree"))
)

# mcid, number of characters
expect_equal(
  unique(nchar(degree$mcid)), 
  11
)
expect_equal(
  unique(substr(degree$mcid, 1, 3)), 
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
  unique(degree[, .(institution)])[order(institution)]
)
