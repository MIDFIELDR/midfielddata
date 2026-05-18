# Data structure

We examine the structure of the four data tables in midfielddata: number
of observations, number and class of variables, representative values,
and database keys.

| Table | Each row is | N students | N rows | N columns | Mb memory |
|----|----|----|----|----|----|
| course | one student per term & course | 97,555 | 3,289,532 | 12 | 324.3 |
| term | one student per term | 97,555 | 639,915 | 13 | 72.8 |
| student | one student | 97,555 | 97,555 | 13 | 17.3 |
| degree | one student per degree | 49,543 | 49,665 | 5 | 5.2 |

## Load data

*Start.*   If you are writing your own script to follow along, we use
these packages in this article:

``` r

library(midfielddata)
library(data.table)
library(wrapr)
```

*Load data tables.*   Data tables can be loaded individually or
collectively as needed.

``` r

# Load one table as needed
data(student)

# Or load multiple tables
data(course, term, degree)
```

## `student`

Student-level demographic information for 97,555 degree-seeking
undergraduate students. Data at the “student-level” refers to
information collected by undergraduate institutions about individual
students at matriculation, for example, age, sex, and race/ethnicity.

The `student` data table has 97,555 observations of the 13 variables
listed below. View the data dictionary using
[`?student`](https://midfieldr.github.io/midfielddata/reference/student.md).

             Variable     Class
    1            mcid character
    2     institution character
    3        transfer character
    4  hours_transfer   numeric
    5            race character
    6             sex character
    7        age_desc character
    8      us_citizen character
    9        home_zip character
    10    high_school character
    11       sat_math   numeric
    12     sat_verbal   numeric
    13       act_comp   numeric

Student data are structured in row-record form, that is, information
associated with a particular ID occupies a single row—one record per
student.

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

Here, the ID variable is the primary key, as well as being the key
common to all four data sets. We can verify that this column provides a
unique key as follows:

``` r

# Check that the indicated column forms a primary key
key_col_names <- c("mcid")
wrapr::checkColsFormUniqueKeys(student, key_col_names)
#> [1] TRUE

# Primary key variable should have no missing values
sum(is.na(student$mcid))
#> [1] 0
```

Student IDs and institution names have been anonymized to remove
identifiable information.

``` r

# Anonymized IDs
sample(student$mcid, 8)
#> [1] "MCID3111312879" "MCID3112197606" "MCID3111735491" "MCID3112243871"
#> [5] "MCID3112849521" "MCID3112669477" "MCID3111754188" "MCID3112290710"

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

Student-level course information for 97,555 undergraduates including
course name and number, credit hours, and student grades for individual
students in each term and course.

The `course` data table has 3,289,532 observations of the 12 variables
listed below. View the data dictionary using
[`?course`](https://midfieldr.github.io/midfielddata/reference/course.md).

                  Variable     Class
    1                 mcid character
    2          institution character
    3          term_course character
    4               course character
    5               abbrev character
    6               number character
    7              section character
    8                 type character
    9         faculty_rank character
    10        hours_course   numeric
    11               grade character
    12 discipline_midfield character

Course data are structured in block-record form, that is, records
associated with a particular ID can span multiple rows—one record per
student per term per course.

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

Here, the key is a composite of four variables: student ID, course
abbreviation and number, and term.

``` r

# Check that the indicated column forms a primary key
key_col_names <- c("mcid", "term_course", "abbrev", "number")
wrapr::checkColsFormUniqueKeys(course, key_col_names)
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

Sample of the course names. The course names do not contribute to the
composite key, thus NAs are possible.

``` r

# Sample course names
sample(course$course, 10)
#>  [1] "Sociology Of Aging"                     
#>  [2] NA                                       
#>  [3] "War/Peace/Strat Defense"                
#>  [4] "Campaigns And Revolutions"              
#>  [5] NA                                       
#>  [6] "College Composition"                    
#>  [7] "Ethics"                                 
#>  [8] NA                                       
#>  [9] "Shakespeare/Nonmajors"                  
#> [10] "Global Issues And International Affairs"
```

Possible values of the faculty rank variable.

``` r

# Possible values
sort(unique(course$faculty_rank))
#>  [1] "Academic Professional"     "Adjunct Faculty"          
#>  [3] "Administrative Assistant"  "Assistant Professor"      
#>  [5] "Associate Professor"       "Clinical Faculty"         
#>  [7] "Graduate Assistant"        "Instructor"               
#>  [9] "Lecturer"                  "Non-Academic Professional"
#> [11] "Other"                     "Pre/Post Doctoral"        
#> [13] "Professor"                 "Research Faculty"         
#> [15] "Senior Administrator"      "Technician/Specialist"    
#> [17] "Undergraduate Assistant"   "Visiting Faculty"
```

Using the course abbreviation and number keys, we can count the number
of unique courses in these data.

``` r

# Extract unique courses
DT <- copy(course)
DT <- unique(DT[, .(abbrev, number)])
DT
#>        abbrev number
#>        <char> <char>
#>     1:   ECEN   2230
#>     2:   ECEN   4811
#>     3:   MCEN   4147
#>    ---              
#> 22985:   ENVD   1976
#> 22986:   ORGN   1001
#> 22987:   IPHY   2010

# Number of unique courses
nrow(DT)
#> [1] 22987
```

## `term`

Student-level term information for 135 undergraduates including program
code, academic standing, and grade point average for individual students
in each term.

The `term` data table has 639,915 observations of the 13 variables
listed below. View the data dictionary using
[`?term`](https://midfieldr.github.io/midfielddata/reference/term.md).

                  Variable     Class
    1                 mcid character
    2          institution character
    3                 term character
    4                 cip6 character
    5                level character
    6             standing character
    7                 coop character
    8           hours_term   numeric
    9   hours_term_attempt   numeric
    10         hours_cumul   numeric
    11 hours_cumul_attempt   numeric
    12            gpa_term   numeric
    13           gpa_cumul   numeric

Term data are structured in block-record form, that is, records
associated with a particular ID can span multiple rows—one record per
student per term.

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

Here, the key is a composite of two variables: student ID and term.

``` r

# Check that the indicated column forms a primary key
key_col_names <- c("mcid", "term")
wrapr::checkColsFormUniqueKeys(term, key_col_names)
#> [1] TRUE

# Composite key variables should have no missing values
sum(is.na(term$mcid))
#> [1] 0
sum(is.na(term$term))
#> [1] 0
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
on the 2010 Classification of Instructional Programs (CIP) ([NCES
2010](#ref-NCES:2010)).

``` r

# A sample of cip6 values
sort(unique(sample(term$cip6, 8)))
#> [1] "030103" "140201" "141201" "240199" "260901" "450701" "540101"
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

Student-level degree information for 49,543 undergraduates including
institution, program, term, and baccalaureate degree for each student.

The `degree` data table has 49,665 observations of the 5 variables
listed below. View the data dictionary using
[`?degree`](https://midfieldr.github.io/midfielddata/reference/degree.md).

         Variable     Class
    1        mcid character
    2 institution character
    3 term_degree character
    4        cip6 character
    5      degree character

Degree data are structured in block-record form, that is, records
associated with a particular ID can span multiple rows—one record per
student per degree. Multiple degrees can occur in the same term or in
different terms.

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

Here, the key is a composite of two variables: student ID and the CIP
code.

``` r

# Check that the indicated column forms a primary key
key_col_names <- c("mcid", "cip6")
wrapr::checkColsFormUniqueKeys(degree, key_col_names)
#> [1] TRUE

# Composite key variables should have no missing values
sum(is.na(degree$mcid))
#> [1] 0
sum(is.na(degree$degree))
#> [1] 0
```

This dataset contains records for graduates only, thus `degree` has
fewer rows that `student`. The `term_degree` variable indicates when the
student graduated and the and `cip6` indicates from which program.

Sample of the degree names.

``` r

sample(degree$degree, 10)
#>  [1] "Bachelor of Science in Aerospace Engineering"                 
#>  [2] "Bachelor of Science in Business Administration and Management"
#>  [3] "Bachelor of Fine Arts in Theatre Arts"                        
#>  [4] "Bachelor of International and Global Studies"                 
#>  [5] "Bachelor of Science in Molecular Biology"                     
#>  [6] "Bachelor of Arts in Political Science and Government"         
#>  [7] "Bachelor of Liberal Arts and Sciences"                        
#>  [8] "Bachelor of Science in Mechanical Engineering"                
#>  [9] "Bachelor of Musical Arts"                                     
#> [10] "Bachelor of Arts in Geography"
```

The number of unique degrees in these data.

``` r

# Count the unique degrees
length(unique(degree$degree))
#> [1] 153

# Count the number of unique program codes
length(unique(degree$cip6))
#> [1] 153
```

Number of degrees earned per student. In these practice data, 122
students earned two degrees.

``` r

# Count number of degrees by student
by_id <- degree[, .(degree_count = .N), by = "mcid"]

# Count the number of students by the degree count
by_id[, .(N_students = .N), by = "degree_count"]
#>    degree_count N_students
#>           <int>      <int>
#> 1:            1      49421
#> 2:            2        122
```

## References

NCES. 2010. *IPEDS Classification of Instructional Programs (CIP)*.
National Center for Education Statistics.
<https://nces.ed.gov/ipeds/cipcode/>.
