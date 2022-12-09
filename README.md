
<!-- README.md is generated from README.Rmd. Please edit that file -->

<br>`midfielddata` is an R data package that supplies anonymized
student-level records for 98,000 undergraduates from the MIDFIELD
database. Provides practice data for the tools and methods of
`midfieldr`.

![](https://github.com/MIDFIELDR/midfielddata/blob/main/docs/logo.png?raw=true)

## Introduction

Data at the “student-level” refers to information collected by
undergraduate institutions on individual students, including:

- *course* information, e.g., course name & number, credit hours, and
  student grades
- *term* information, e.g., program, academic standing, and grade point
  average
- *student* demographic information, e.g., age, sex, and race/ethnicity
- *degree* information, e.g., institution, program, term, and
  baccalaureate degree

`midfielddata` provides anonymized student-level records for 98,000
undergraduates at three US institutions from 1988 through 2018,
collected in four data tables keyed by student ID.

<table class=" lightable-paper" style="font-family: &quot;Arial Narrow&quot;, arial, helvetica, sans-serif; width: auto !important; margin-left: auto; margin-right: auto;">
<caption>
Table 1. Practice datasets in `midfielddata`.
</caption>
<thead>
<tr>
<th style="text-align:left;background-color: #c7eae5 !important;">
Dataset
</th>
<th style="text-align:left;background-color: #c7eae5 !important;">
Each row is
</th>
<th style="text-align:right;background-color: #c7eae5 !important;">
Students
</th>
<th style="text-align:right;background-color: #c7eae5 !important;">
Rows
</th>
<th style="text-align:right;background-color: #c7eae5 !important;">
Columns
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
one student per course
</td>
<td style="text-align:right;color: black !important;background-color: white !important;">
97,555
</td>
<td style="text-align:right;color: black !important;background-color: white !important;">
3,289,532
</td>
<td style="text-align:right;color: black !important;background-color: white !important;">
12
</td>
<td style="text-align:right;color: black !important;background-color: white !important;">
324.3 MB
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
97,555
</td>
<td style="text-align:right;color: black !important;background-color: white !important;">
639,915
</td>
<td style="text-align:right;color: black !important;background-color: white !important;">
13
</td>
<td style="text-align:right;color: black !important;background-color: white !important;">
72.8 MB
</td>
</tr>
<tr>
<td style="text-align:left;font-family: monospace;color: black !important;background-color: white !important;">
student
</td>
<td style="text-align:left;color: black !important;background-color: white !important;">
one student
</td>
<td style="text-align:right;color: black !important;background-color: white !important;">
97,555
</td>
<td style="text-align:right;color: black !important;background-color: white !important;">
97,555
</td>
<td style="text-align:right;color: black !important;background-color: white !important;">
13
</td>
<td style="text-align:right;color: black !important;background-color: white !important;">
17.3 MB
</td>
</tr>
<tr>
<td style="text-align:left;font-family: monospace;color: black !important;background-color: white !important;">
degree
</td>
<td style="text-align:left;color: black !important;background-color: white !important;">
one student per degree
</td>
<td style="text-align:right;color: black !important;background-color: white !important;">
49,543
</td>
<td style="text-align:right;color: black !important;background-color: white !important;">
49,665
</td>
<td style="text-align:right;color: black !important;background-color: white !important;">
5
</td>
<td style="text-align:right;color: black !important;background-color: white !important;">
5.2 MB
</td>
</tr>
</tbody>
</table>

The data in `midfielddata` are a proportionate stratified sample of the
[MIDFIELD](#more-information) database, but are *not suitable for
drawing inferences* about program attributes or student
experiences—`midfielddata` are for *practice*, not research.

*Notes on syntax.*   We use `data.table` for data manipulation. Some
users may prefer base R or `dplyr`. Each system has its strengths—users
are welcome to translate our examples to their preferred syntax.

``` r
format(Sys.Date(), "%Y-%m-%d") # Today's date
#> [1] "2022-12-09"
packageVersion("midfielddata") # Student-level records practice data 
#> [1] '0.2.0'
packageVersion("data.table")   # For data manipulation
#> [1] '1.14.6'
```

## Usage

In this example, we display the student-level records for a single
student across all four datasets.

``` r
library(midfielddata)
library(data.table)
```

Data tables can be loaded individually or collectively as needed.

``` r
# Load one table as needed
data(student)

# Or load multiple tables
data(course, term, degree)
```

Selecting a specific student ID.

``` r
# One student ID
id_we_want <- "MCID3112192438"
```

### `student`

Run `?student` to view its help page and data dictionary. Contains one
observation per student. Our example case yields, as expected, one
observation.

``` r
# All observations for this ID
student[mcid == id_we_want]
#>              mcid   institution              transfer hours_transfer  race
#> 1: MCID3112192438 Institution C First-Time in College             NA White
#>       sex age_desc us_citizen home_zip high_school sat_math sat_verbal act_comp
#> 1: Female Under 25        Yes    80521        <NA>      580        390       27
```

### `course`

Run `?course` to view its help page and data dictionary. Contains one
observation per student per course. Most students enroll in multiple
courses, so we expect a specific ID to yield a block of observations.

Our example case yields 47 course observations.

``` r
# All observations for this ID
course[mcid == id_we_want]
#>               mcid   institution term_course                         course
#>  1: MCID3112192438 Institution C       20051 Key Academic Community Seminar
#>  2: MCID3112192438 Institution C       20051       Humans and Other Animals
#>  3: MCID3112192438 Institution C       20051            Health and Wellness
#> ---                                                                        
#> 45: MCID3112192438 Institution C       20093            Health and the Mind
#> 46: MCID3112192438 Institution C       20093   Social Psychology Laboratory
#> 47: MCID3112192438 Institution C       20093                    Group Study
#>     abbrev number section         type              faculty_rank hours_course
#>  1:     KA    192     009         <NA>                Instructor            3
#>  2:   BZCC    101     002         <NA>       Assistant Professor            3
#>  3:   EXCC    145     004         <NA> Non-Academic Professional            3
#> ---                                                                          
#> 45:    PSY    121     001 Face-to-Face Non-Academic Professional            1
#> 46:    PSY    317     L02 Face-to-Face        Graduate Assistant            2
#> 47:    PSY    496     004 Face-to-Face                Instructor            3
#>     grade                        discipline_midfield
#>  1:     A                           Academic Support
#>  2:     B Biological and Biomedical Sciences: Botany
#>  3:     A           Education: Physical and Coaching
#> ---                                                 
#> 45:    A+                                 Psychology
#> 46:     A                                 Psychology
#> 47:    A+                                 Psychology
```

### `term`

Run `?term` to view its help page and data dictionary. Contains one
observation per student per term. Again, most students enroll in
multiple terms, so we expect a specific ID to yield a block of
observations.

Our example case yields 10 term observations.

``` r
# All observations for this ID
term[mcid == id_we_want]
#>               mcid   institution  term   cip6              level      standing
#>  1: MCID3112192438 Institution C 20051 451101      01 First-year Good Standing
#>  2: MCID3112192438 Institution C 20053 190701      01 First-year Good Standing
#>  3: MCID3112192438 Institution C 20061 451101     02 Second-year Good Standing
#> ---                                                                           
#>  8: MCID3112192438 Institution C 20083 451101     04 Fourth-year Good Standing
#>  9: MCID3112192438 Institution C 20091 451101     04 Fourth-year Good Standing
#> 10: MCID3112192438 Institution C 20093 451101 05 Fifth-year Plus Good Standing
#>     coop hours_term hours_term_attempt hours_cumul hours_cumul_attempt gpa_term
#>  1:   No         15                 15          15                  15     3.80
#>  2:   No         11                 11          26                  26     3.40
#>  3:   No         16                 16          42                  42     3.25
#> ---                                                                            
#>  8:   No         16                 16         105                 105     3.75
#>  9:   No         13                 13         118                 118     4.00
#> 10:   No         12                 12         130                 130     4.00
#>     gpa_cumul
#>  1:      3.80
#>  2:      3.63
#>  3:      3.49
#> ---          
#>  8:      3.61
#>  9:      3.65
#> 10:      3.68
```

### `degree`

Run `?degree` to view its help page and data dictionary. Contains one
observation per student per degree. Most students earn one baccalaureate
degree, but some earn more than one.

Our example case yields two degree observations, both earned in Spring
of academic year (AY) 2009–10 (encoded `20093`).

``` r
# All observations for this ID
degree[mcid == id_we_want]
#>              mcid   institution term_degree   cip6
#> 1: MCID3112192438 Institution C       20093 420101
#> 2: MCID3112192438 Institution C       20093 451101
#>                               degree
#> 1: Bachelor of Science in Psychology
#> 2:     Bachelor of Arts in Sociology
```

Some students earn additional degrees after their first degree. The
student `below`, for example, earned their first degree in Fall AY
1996–97 (encoded `19961`) and their second in Summer AY 1999–2000
(encoded `19994`). In many analyses, only the first baccalaureate degree
would be used.

``` r
# All observations for a new ID
degree[mcid == "MCID3111315508"]
#>              mcid   institution term_degree   cip6
#> 1: MCID3111315508 Institution C       19961 260101
#> 2: MCID3111315508 Institution C       19994 260701
#>                                        degree
#> 1: Bachelor of Science in Biological Sciences
#> 2:      Bachelor of Science in Animal Biology
```

## Installation

Install with:

``` r
install.packages("midfielddata",
  repos = "https://MIDFIELDR.github.io/drat/",
  type = "source"
)
```

The installed size of `midfielddata` is about 24 Mb, so installation
will take longer than that of a conventional CRAN package. Also because
of its size, the package is not hosted on CRAN (with its 5 MB size
limit)—instead, we host it on the MIDFIELDR `drat` repository as
indicated above.

Link to installation instructions for `midfieldr` below.

## More information

[`midfieldr`](https://midfieldr.github.io/midfieldr/)  
A companion R package that provides tools and methods for studying
undergraduate student-level records from the MIDFIELD database.

[MIDFIELD](https://midfield.online/)  
A database of student-level records for approximately 1.7M
undergraduates at nineteen US institutions from 1987 through 2018, of
which `midfielddata` provides a sample. The full research database is
currently accessible to MIDFIELD partner institutions only.

[MIDFIELD Institute](https://midfieldr.github.io/2022-midfield-institute/)  
Materials from the 2022 workshop, including an introduction to R for
beginners, chart basics with `ggplot2` and data basics with
`data.table`.

## Acknowledgments

This work is supported by a grant from the US National Science
Foundation (EEC 1545667).
