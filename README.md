
<!-- README.md is generated from README.Rmd. Please edit that file -->

<br>This package contains a practice-data sample of the MIDFIELD
database that provides anonymized student-level records for 98,000
undergraduates.

![](https://github.com/MIDFIELDR/midfielddata/blob/main/docs/logo.png?raw=true)

## Introduction

Student-level data refers to information collected by undergraduate
institutions on individual students, including:

- *course* information, e.g., course name & number, credit hours, and
  student grades
- *term* information, e.g., program, academic standing, and grade point
  average
- *student* demographic information, e.g., age, sex, and race/ethnicity
- *degree* information, e.g., institution, program, term, and
  baccalaureate degree

‘midfielddata’ provides anonymized student-level records for 98,000
undergraduates at three US institutions from 1988 through 2018,
collected in four data tables keyed by student ID.

<table class=" lightable-paper" style="font-family: &quot;Arial Narrow&quot;, arial, helvetica, sans-serif; margin-left: auto; margin-right: auto;">
<caption>
Table 1. Practice data in ‘midfielddata’.
</caption>
<thead>
<tr>
<th style="text-align:left;background-color: #c7eae5 !important;">
Practice data table
</th>
<th style="text-align:left;background-color: #c7eae5 !important;">
Each row is
</th>
<th style="text-align:right;background-color: #c7eae5 !important;">
No. of rows
</th>
<th style="text-align:right;background-color: #c7eae5 !important;">
No. of columns
</th>
<th style="text-align:right;background-color: #c7eae5 !important;">
Memory
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;font-family: monospace;color: black !important;background-color: white !important;">
course
</td>
<td style="text-align:left;color: black !important;background-color: white !important;">
one student per course per term
</td>
<td style="text-align:right;color: black !important;background-color: white !important;">
3,289,532
</td>
<td style="text-align:right;color: black !important;background-color: white !important;">
12
</td>
<td style="text-align:right;color: black !important;background-color: white !important;">
324 Mb
</td>
</tr>
<tr>
<td style="text-align:left;font-family: monospace;color: black !important;background-color: white !important;">
term
</td>
<td style="text-align:left;color: black !important;background-color: white !important;">
one student per term
</td>
<td style="text-align:right;color: black !important;background-color: white !important;">
639,915
</td>
<td style="text-align:right;color: black !important;background-color: white !important;">
13
</td>
<td style="text-align:right;color: black !important;background-color: white !important;">
73 Mb
</td>
</tr>
<tr>
<td style="text-align:left;font-family: monospace;color: black !important;background-color: white !important;">
student
</td>
<td style="text-align:left;color: black !important;background-color: white !important;">
one degree-seeking student
</td>
<td style="text-align:right;color: black !important;background-color: white !important;">
97,555
</td>
<td style="text-align:right;color: black !important;background-color: white !important;">
13
</td>
<td style="text-align:right;color: black !important;background-color: white !important;">
18 Mb
</td>
</tr>
<tr>
<td style="text-align:left;font-family: monospace;color: black !important;background-color: white !important;">
degree
</td>
<td style="text-align:left;color: black !important;background-color: white !important;">
one student per degree earned
</td>
<td style="text-align:right;color: black !important;background-color: white !important;">
49,543
</td>
<td style="text-align:right;color: black !important;background-color: white !important;">
5
</td>
<td style="text-align:right;color: black !important;background-color: white !important;">
5 Mb
</td>
</tr>
</tbody>
</table>

These data are a proportionate stratified sample of the [MIDFIELD
database](#more-information), but are not suitable for drawing
inferences about program attributes or student
experiences—‘midfielddata’ provides practice data, not research data.

## Usage

We use ‘data.table’ throughout for its compact syntax. Its use is
optional, though one would have to modify the examples to accommodate a
different data manipulation syntax such as that in base ‘R’ or ‘dplyr’.

``` r
# For data manipulation
library(data.table)
```

Data tables can be loaded individually or in groups as needed.

``` r
# Load multiple tables at once 
data(student, course, term, degree, package = "midfielddata")
```

To illustrate the data structure, we examine the student-level data for
one specific student.

``` r
# One student ID
mcid_we_want <- "MCID3112192438"
```

### `student`

The `student` data table contains one observation per student. Here we
select a subset of columns for a less cluttered printout.

``` r
# Select specific columns
cols_we_want <- c("mcid", "institution", "transfer", "race", "sex", "age_desc")

# All observations for this ID 
student[mcid == mcid_we_want, .SD, .SDcols = cols_we_want]
#>              mcid   institution              transfer   race    sex age_desc
#>            <char>        <char>                <char> <char> <char>   <char>
#> 1: MCID3112192438 Institution C First-Time in College  White Female Under 25
```

### `course`

The remaining excerpts illustrate the block-record structure of the
data, that is, information for one student forms a block of rows, all
with the same ID.

The `course` information for this student, for example, contains 47
rows—one observation per course per term—from Fall 2005 through Spring
2009.

``` r
# Select specific columns
cols_we_want <- c("mcid", "term_course", "course", "grade")

# All observations for this ID 
course[mcid == mcid_we_want, .SD, .SDcols = cols_we_want]
#>               mcid term_course                         course  grade
#>             <char>      <char>                         <char> <char>
#>  1: MCID3112192438       20051 Key Academic Community Seminar      A
#>  2: MCID3112192438       20051       Humans and Other Animals      B
#>  3: MCID3112192438       20051            Health and Wellness      A
#>  4: MCID3112192438       20051            College Composition      A
#>  5: MCID3112192438       20051      Moral and Social Problems      A
#>  6: MCID3112192438       20053 Africn-Americn Hist Since 1865     B+
#>  7: MCID3112192438       20053  Individual&Family Development      B
#>  8: MCID3112192438       20053           First-Year Spanish I     A-
#>  9: MCID3112192438       20061  Chicana/o History and Culture     C+
#> 10: MCID3112192438       20061   Basic Concepts of Plant Life      B
#> 11: MCID3112192438       20061  Basic Concepts-Plant Life Lab      A
#> 12: MCID3112192438       20061                    Advertising     B-
#> 13: MCID3112192438       20061    Ldrshp in Higher Ed Environ      A
#> 14: MCID3112192438       20061 Introductn to Criminal Justice      A
#> 15: MCID3112192438       20063          First-Year Spanish II     A-
#> 16: MCID3112192438       20063 Contemporary Sociolgicl Theory      A
#> 17: MCID3112192438       20071    Introduction to Social Work     B+
#> 18: MCID3112192438       20071  Human Behavior Social Environ      A
#> 19: MCID3112192438       20071 Practicum-Communication Skills      A
#> 20: MCID3112192438       20071 Methds of Sociological Inquiry     A-
#> 21: MCID3112192438       20073      Psychology of Differences     B+
#> 22: MCID3112192438       20073  Research Methds in Psychology      A
#> 23: MCID3112192438       20073              Social Psychology      A
#> 24: MCID3112192438       20073 Introductn-Statistical Methods      C
#> 25: MCID3112192438       20081              Writing Arguments      A
#> 26: MCID3112192438       20081      Organizational Psychology      B
#> 27: MCID3112192438       20081  Organizational Psychology Lab      A
#> 28: MCID3112192438       20081  History&Systems of Psychology      A
#> 29: MCID3112192438       20081  Computer Methods in Sociology      A
#> 30: MCID3112192438       20081          Sociology of Disaster      A
#> 31: MCID3112192438       20083 Concepts-Human Anat&Physiology      A
#> 32: MCID3112192438       20083 Principles of Human Physiology      B
#> 33: MCID3112192438       20083      Mind, Brain, and Behavior      A
#> 34: MCID3112192438       20083       Sensation and Perception      A
#> 35: MCID3112192438       20083   Sensation and Perception Lab      A
#> 36: MCID3112192438       20083           Symbolic Interaction      A
#> 37: MCID3112192438       20091  Psychology of Human Sexuality      A
#> 38: MCID3112192438       20091            Abnormal Psychology      A
#> 39: MCID3112192438       20091          Social Stratification     A+
#> 40: MCID3112192438       20091                     Internship      A
#> 41: MCID3112192438       20091                        Seminar      A
#> 42: MCID3112192438       20093 Introduction to Ethnic Studies     A+
#> 43: MCID3112192438       20093              Independent Study      A
#> 44: MCID3112192438       20093          Leadership for Greeks      A
#> 45: MCID3112192438       20093            Health and the Mind     A+
#> 46: MCID3112192438       20093   Social Psychology Laboratory      A
#> 47: MCID3112192438       20093                    Group Study     A+
#>               mcid term_course                         course  grade
```

### `term`

The `term` data table has one observation per student per term. This
student enrolled for 10 consecutive terms, changing majors once (row 2,
`cip6` variable) and then changing back.

``` r
# Select specific columns
cols_we_want <- c("mcid", "term", "cip6", "level", "standing", "gpa_cumul")

# All observations for this ID 
term[mcid == mcid_we_want, .SD, .SDcols = cols_we_want]
#>               mcid   term   cip6              level      standing gpa_cumul
#>             <char> <char> <char>             <char>        <char>     <num>
#>  1: MCID3112192438  20051 451101      01 First-year Good Standing      3.80
#>  2: MCID3112192438  20053 190701      01 First-year Good Standing      3.63
#>  3: MCID3112192438  20061 451101     02 Second-year Good Standing      3.49
#>  4: MCID3112192438  20063 451101     02 Second-year Good Standing      3.54
#>  5: MCID3112192438  20071 451101      03 Third-year Good Standing      3.58
#>  6: MCID3112192438  20073 451101      03 Third-year Good Standing      3.54
#>  7: MCID3112192438  20081 451101      03 Third-year Good Standing      3.58
#>  8: MCID3112192438  20083 451101     04 Fourth-year Good Standing      3.61
#>  9: MCID3112192438  20091 451101     04 Fourth-year Good Standing      3.65
#> 10: MCID3112192438  20093 451101 05 Fifth-year Plus Good Standing      3.68
```

### `degree`

The `degree` data table has one observation per student per degree. This
student earned a double degree in Psychology and Sociology, thus there
are two observations for this ID.

``` r
# Select specific columns 
cols_we_want <- c("mcid", "term_degree", "cip6", "degree")

# All observations for this ID 
degree[mcid == mcid_we_want, .SD, .SDcols = cols_we_want]
#>              mcid term_degree   cip6                            degree
#>            <char>      <char> <char>                            <char>
#> 1: MCID3112192438       20093 420101 Bachelor of Science in Psychology
#> 2: MCID3112192438       20093 451101     Bachelor of Arts in Sociology
```

Not all students with more than one degree earn them in the same term.
For example, the next student earned a degree in Biological Sciences in
1996 and a second baccalaureate degree in Animal Biology in 1999. In
most analyses, only the first baccalaureate degree would be used.

``` r
# All observations for this ID 
degree[mcid == "MCID3111315508", .SD, .SDcols = cols_we_want]
#>              mcid term_degree   cip6                                     degree
#>            <char>      <char> <char>                                     <char>
#> 1: MCID3111315508       19961 260101 Bachelor of Science in Biological Sciences
#> 2: MCID3111315508       19994 260701      Bachelor of Science in Animal Biology
```

## Installation

The installed size of ‘midfielddata’ is about 24 Mb. Because this
exceeds the CRAN package limit (5 Mb), we host the package on the
[MIDFIELD ‘drat’ repository](https://github.com/MIDFIELDR/drat).

Also because of its size, the installation takes some time. Install
with:

``` r
install.packages("midfielddata",
  repos = "https://MIDFIELDR.github.io/drat/",
  type = "source"
)
```

## More information

[MIDFIELD database](https://midfield.online/)  
MIDFIELD contains, as of October 2022, individual student-level data for
1.7M undergraduates at 19 US institutions from 1987 through 2018. Access
to the MIDFIELD research database is currently limited to MIDFIELD
partner institutions, but a sample of these data are available in
‘midfielddata’.

[‘midfieldr’](https://midfieldr.github.io/midfieldr/)  
A companion ‘R’ package that provides tools and detailed procedures for
working with MIDFIELD data.
