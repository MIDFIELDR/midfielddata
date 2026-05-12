# Data structure

In this article, we examine the general structure and identify the
primary and composite keys for the four data tables: `student`,
`course`, `term`, and `degree`.

## Load data

*Start.*   If you are writing your own script to follow along, we use
these packages in this article:

``` r

library(wrapr)
library(midfielddata)
library(data.table)
```

*Load data tables.*   Data tables can be loaded individually or
collectively as needed. View data dictionaries via
[`?student`](https://midfieldr.github.io/midfielddata/reference/student.md),
[`?course`](https://midfieldr.github.io/midfielddata/reference/course.md),
[`?term`](https://midfieldr.github.io/midfielddata/reference/term.md),
or
[`?degree`](https://midfieldr.github.io/midfielddata/reference/degree.md).

``` r

# Load one table as needed
data(student)

# Or load multiple tables
data(course, term, degree)
```

## `student`

Data table with 13 variables and 97,555 rows. The variables are listed
in Table 1.

| variable       | class     |
|----------------|-----------|
| mcid           | character |
| institution    | character |
| transfer       | character |
| hours_transfer | numeric   |
| race           | character |
| sex            | character |
| age_desc       | character |
| us_citizen     | character |
| home_zip       | character |
| high_school    | character |
| sat_math       | numeric   |
| sat_verbal     | numeric   |
| act_comp       | numeric   |

Table 1: Variables in student {.table .gt_table
quarto-disable-processing="false" quarto-bootstrap="false"}

The primary key is the student ID variable, `mcid`. We can use a
function from the wrapr package to check that this column provides a
unique key and verify that the number of NA values in the key column is
zero.

``` r

# Check that the indicated column forms a primary key
DT <- copy(student)
key_col_names <- c("mcid")
wrapr::checkColsFormUniqueKeys(DT, key_col_names)
#> [1] TRUE

# Primary key variable should have no missing values
sum(is.na(student$mcid))
#> [1] 0
```

Rows contain one observation per student.

``` r

# First few rows and last few rows
student
#>                  mcid   institution              transfer hours_transfer
#>                <char>        <char>                <char>          <num>
#>     1: MCID3111142225 Institution B   First-Time Transfer             NA
#>     2: MCID3111142283 Institution J   First-Time Transfer             NA
#>     3: MCID3111142290 Institution J   First-Time Transfer             NA
#>    ---                                                                  
#> 97553: MCID3112898894 Institution B First-Time in College             NA
#> 97554: MCID3112898895 Institution B First-Time in College             NA
#> 97555: MCID3112898940 Institution B First-Time in College             NA
#>                 race    sex age_desc us_citizen home_zip high_school sat_math
#>               <char> <char>   <char>     <char>   <char>      <char>    <num>
#>     1:         Asian   Male Under 25        Yes     <NA>        <NA>       NA
#>     2:         Asian Female Under 25        Yes    22020        <NA>      560
#>     3:         Asian   Male Under 25        Yes    23233      471872      510
#>    ---                                                                       
#> 97553:         White Female Under 25        Yes    53716      501160      510
#> 97554:         White Female Under 25        Yes    53029      500853      420
#> 97555: Other/Unknown   Male Under 25        Yes    20016      090073      470
#>        sat_verbal act_comp
#>             <num>    <num>
#>     1:         NA       NA
#>     2:        230       NA
#>     3:        380       NA
#>    ---                    
#> 97553:        590       24
#> 97554:        590       32
#> 97555:        540       32
```

Student IDs and institution names have been anonymized to remove
identifiable information.

``` r

# Anonymized IDs
sample(student$mcid, 8)
#> [1] "MCID3111478315" "MCID3111363338" "MCID3111216590" "MCID3111876789"
#> [5] "MCID3112383444" "MCID3111948721" "MCID3111381575" "MCID3112827958"

# Anonymized institutions
sort(unique(student$institution))
#> [1] "Institution B" "Institution C" "Institution J"
```

Race/ethnicity and sex are often used as grouping variables.

``` r

# Possible values
sort(unique(student$race))
#> [1] "Asian"           "Black"           "Hispanic"        "International"  
#> [5] "Native American" "Other/Unknown"   "White"

# Possible values
sort(unique(student$sex))
#> [1] "Female"  "Male"    "Unknown"
```

Counts in each category.

``` r

# N by institution
student[order(institution), .N, by = "institution"]
#>      institution     N
#>           <char> <int>
#> 1: Institution B 45660
#> 2: Institution C 26712
#> 3: Institution J 25183

# N by race
student[order(race), .N, by = "race"]
#>               race     N
#>             <char> <int>
#> 1:           Asian  4193
#> 2:           Black  1860
#> 3:        Hispanic  5386
#> 4:   International  7354
#> 5: Native American   403
#> 6:   Other/Unknown  4509
#> 7:           White 73850

# N by sex
student[order(sex), .N, by = "sex"]
#>        sex     N
#>     <char> <int>
#> 1:  Female 46403
#> 2:    Male 51151
#> 3: Unknown     1
```

## `course`

Data table with 12 variables and 3,289,532 rows. The variables are
listed in Table 2.

| variable            | class     |
|---------------------|-----------|
| mcid                | character |
| institution         | character |
| term_course         | character |
| course              | character |
| abbrev              | character |
| number              | character |
| section             | character |
| type                | character |
| faculty_rank        | character |
| hours_course        | numeric   |
| grade               | character |
| discipline_midfield | character |

Table 2: Variables in course {.table .gt_table
quarto-disable-processing="false" quarto-bootstrap="false"}

The key for the course data is a composite key of four variables:
student ID, term, course abbreviation, and course number.

``` r

# Check that the indicated column forms a primary key
DT <- copy(course)
key_col_names <- c("mcid", "term_course", "abbrev", "number")
wrapr::checkColsFormUniqueKeys(DT, key_col_names)
#> [1] TRUE
 
# Composite key variables should have no missing values
sum(is.na(course$mcid))
#> [1] 0
sum(is.na(course$term_course))
#> [1] 0
sum(is.na(course$abbrev))
#> [1] 0
sum(is.na(course$number))
#> [1] 0
```

Rows contain one observation per student per term per course.

``` r

# First few rows and last few rows
course
#>                    mcid   institution term_course                   course
#>                  <char>        <char>      <char>                   <char>
#>       1: MCID3111142225 Institution B       19881       Microprocessor Lab
#>       2: MCID3111142225 Institution B       19881           Neural Signals
#>       3: MCID3111142225 Institution B       19881      Engineering Economy
#>      ---                                                                  
#> 3289530: MCID3112898940 Institution B       20181     Beginning Japanese 1
#> 3289531: MCID3112898940 Institution B       20181  Precalculus Mathematics
#> 3289532: MCID3112898940 Institution B       20181 Deviance In U S  Society
#>          abbrev number section         type faculty_rank hours_course  grade
#>          <char> <char>  <char>       <char>       <char>        <num> <char>
#>       1:   ECEN   2230     005         <NA>         <NA>            1      C
#>       2:   ECEN   4811     001         <NA>         <NA>            3      C
#>       3:   MCEN   4147     001         <NA>         <NA>            3     B+
#>      ---                                                                    
#> 3289530:   JPNS   1010     009 Face-to-Face     Lecturer            5      C
#> 3289531:   MATH   1150     012 Face-to-Face     Lecturer            4     C-
#> 3289532:   SOCY   1004     100 Face-to-Face   Instructor            3      B
#>                           discipline_midfield
#>                                        <char>
#>       1: Engineering: Electrical and Computer
#>       2: Engineering: Electrical and Computer
#>       3:              Engineering: Mechanical
#>      ---                                     
#> 3289530:    Language and Literature: Japanese
#> 3289531:                          Mathematics
#> 3289532:           Social Sciences: Sociology
```

## `term`

Data table with 13 variables and 639,915 rows. The variables are listed
in Table 3.

| variable            | class     |
|---------------------|-----------|
| mcid                | character |
| institution         | character |
| term                | character |
| cip6                | character |
| level               | character |
| standing            | character |
| coop                | character |
| hours_term          | numeric   |
| hours_term_attempt  | numeric   |
| hours_cumul         | numeric   |
| hours_cumul_attempt | numeric   |
| gpa_term            | numeric   |
| gpa_cumul           | numeric   |

Table 3: Variables in term {.table .gt_table
quarto-disable-processing="false" quarto-bootstrap="false"}

The key for the term data is a composite key of two variables: student
ID and term.

``` r

# Check that the indicated column forms a primary key
DT <- copy(term)
key_col_names <- c("mcid", "term")
wrapr::checkColsFormUniqueKeys(DT, key_col_names)
#> [1] TRUE

# Composite key variables should have no missing values
sum(is.na(term$mcid))
#> [1] 0
sum(is.na(term$term))
#> [1] 0
```

Rows contain one observation per student per term.

``` r

# First few rows and last few rows
term
#>                   mcid   institution   term   cip6         level
#>                 <char>        <char> <char> <char>        <char>
#>      1: MCID3111142225 Institution B  19881 140901 01 First-year
#>      2: MCID3111142283 Institution J  19881 240102 01 First-year
#>      3: MCID3111142283 Institution J  19883 240102 01 First-year
#>     ---                                                         
#> 639913: MCID3112898894 Institution B  20181 451001 01 First-year
#> 639914: MCID3112898895 Institution B  20181 302001 01 First-year
#> 639915: MCID3112898940 Institution B  20181 050103 01 First-year
#>                   standing   coop hours_term hours_term_attempt hours_cumul
#>                     <char> <char>      <num>              <num>       <num>
#>      1:      Good Standing     No          7                  7           7
#>      2: Academic Probation     No          6                  6           6
#>      3: Academic Probation     No         12                 12          18
#>     ---                                                                    
#> 639913:      Good Standing     No         13                 13          13
#> 639914:      Good Standing     No         18                 18          18
#> 639915:      Good Standing     No         15                 15          15
#>         hours_cumul_attempt gpa_term gpa_cumul
#>                       <num>    <num>     <num>
#>      1:                   7     2.56      2.56
#>      2:                   6     1.85      1.85
#>      3:                  18     1.93      1.90
#>     ---                                       
#> 639913:                  13     3.52      3.52
#> 639914:                  18     3.50      3.50
#> 639915:                  15     2.18      2.18
```

Terms are encoded `YYYYT`, where

- `YYYY` is the year at the start of the academic year, and  
- `T` encodes the semester or quarter—Fall (`1`), Winter (`2`), Spring
  (`3`), and Summer (`4`, `5`, and `6`)—within an academic year

For example, for academic year 1995–96,

- `19951` encodes Fall 95–96
- `19953` encodes Spring 95–96
- `19954` encodes Summer 95–96 (first session)

Different institutions supply data over different time spans.

``` r

# Range of data by institution
term[, .(min_term = min(term), max_term = max(term)), by = "institution"]
#>      institution min_term max_term
#>           <char>   <char>   <char>
#> 1: Institution B    19881    20181
#> 2: Institution J    19881    20096
#> 3: Institution C    19901    20154
```

Programs are encoded in the `cip6` variable, a 6-digit character based
on the 2010 Classification of Instructional Programs (CIP) ([*IPEDS
Classification of Instructional Programs* 2010](#ref-cip2010)).

``` r

# A sample of cip6 values
sort(unique(sample(term$cip6, 8)))
#> [1] "030511" "160101" "260202" "261310" "400501" "500501" "511104" "520201"
```

Student level is used when determining timely completion terms of
transfer students.

``` r

# Possible values
sort(unique(term$level))
#> [1] "01 First-year"      "02 Second-year"     "03 Third-year"     
#> [4] "04 Fourth-year"     "05 Fifth-year Plus"
```

## `degree`

Data table with 5 variables and 49,665 rows. The variables are listed in
Table 4.

| variable    | class     |
|-------------|-----------|
| mcid        | character |
| institution | character |
| term_degree | character |
| cip6        | character |
| degree      | character |

Table 4: Variables in degree {.table .gt_table
quarto-disable-processing="false" quarto-bootstrap="false"}

The key for the degree data is a composite key of two variables: student
ID and degree

``` r

# Check that the indicated column forms a primary key
DT <- copy(degree)
key_col_names <- c("mcid", "degree")
wrapr::checkColsFormUniqueKeys(DT, key_col_names)
#> [1] TRUE

# Composite key variables should have no missing values
sum(is.na(degree$mcid))
#> [1] 0
sum(is.na(degree$degree))
#> [1] 0
```

Rows contain one observation per student per degree.

``` r

# First few rows and last few rows
degree
#>                  mcid   institution term_degree   cip6
#>                <char>        <char>      <char> <char>
#>     1: MCID3111142225 Institution B       19881 141001
#>     2: MCID3111142290 Institution J       19921 141001
#>     3: MCID3111142294 Institution J       19903 141001
#>    ---                                                
#> 49663: MCID3112839623 Institution B       20181 160102
#> 49664: MCID3112845220 Institution B       20181 270101
#> 49665: MCID3112845673 Institution B       20174 090101
#>                                                          degree
#>                                                          <char>
#>     1:            Bachelor of Science in Electrical Engineering
#>     2:            Bachelor of Science in Electrical Engineering
#>     3:            Bachelor of Science in Electrical Engineering
#>    ---                                                         
#> 49663:                       Bachelor of Science in Linguistics
#> 49664:                       Bachelor of Science in Mathematics
#> 49665: Bachelor of Science in Speech Communication and Rhetoric
```

This dataset contains records for graduates only, thus the number of
observations in `degree` (49,665) is less than the number of
observations in `student` (97,555). The `term_degree` and `cip6`
variables indicate when and from which program a student graduates.

Number of degrees earned per student. In these practice data, only one
student earned more than one degree.

``` r

# Count number of degrees by student
by_id <- degree[, .(degree_count = .N), by = "mcid"]

# Count number of students by number of degrees earned
by_id[, .(N_students = .N), by = "degree_count"]
#>    degree_count N_students
#>           <int>      <int>
#> 1:            1      49421
#> 2:            2        122
```

## References

*IPEDS Classification of Instructional Programs*. 2010. National Center
for Education Statistics (NCES); <https://nces.ed.gov/ipeds/cipcode/>.
