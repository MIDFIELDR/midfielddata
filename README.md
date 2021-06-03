
# midfielddata <span class="border-wrap"><img src="man/figures/midfieldhex05.png" align="right" height="122" width="106" alt="logo.png"></span>

[![Build
Status](https://travis-ci.org/MIDFIELDR/midfielddata.svg?branch=master)](https://travis-ci.org/MIDFIELDR/midfielddata)
[![License](man/figures/License-CC-0-blue.svg)](https://creativecommons.org/publicdomain/zero/1.0/)

An R data package containing four data sets:

-   `student` A `data.table` with 97,640 observations and 13 variables
    at admission. Each observation is a unique student keyed by student
    ID. Occupies 19 MB of memory. Data dictionary
    [(link)](reference/student.html).

-   `course` A `data.table` with 3.5 M observations and 12 academic
    course variables keyed by student ID, term, course abbreviation,
    number, and section. Each observation is a unique course, section,
    term, and student. Occupies 349 MB of memory. Data dictionary
    [(link)](reference/course.html).

-   `term` A v with 727,369 observations and 13 academic term variables
    keyed by student ID and term. Each observation is one term for one
    student. Occupies 82 MB of memory. Data dictionary
    [(link)](reference/term.html).

-   `degree` A `data.table` with 47,499 observations and 5 graduation
    variables keyed by student ID. Each observation is a unique student.
    Occupies 10.2 MB of memory. Data dictionary
    [(link)](reference/degree.html).

These data are a stratified sample of data from the
[MIDFIELD](https://engineering.purdue.edu/MIDFIELD) project, comprising
student records from registrars at participating US universities for
97,640 undergraduate students from 1987 to 2016. For privacy protection,
personal and institutional identities are anonymized.

Tools for accessing and analyzing these data are provided by the
[midfieldr](https://midfieldr.github.io/midfieldr) package.

## Installation

Install midfielddata from our drat repo. The data package is large, so
this step takes time. Please be patient and wait for the Console prompt
&gt; to reappear.

``` r
install.packages("midfielddata", repos = "https://MIDFIELDR.github.io/drat/", type = "source")
```

When installed and loaded, each data set has a `data.table` structure.

## The build

midfielddata currently passes R CMD check with the results:

    0 errors | 0 warnings | 1 note 
    checking installed package size ... NOTE
      installed size is 30.8Mb
      sub-directories of 1Mb or more:
        data  30.7Mb

## Meta

-   Get citation information with `citation("midfielddata")`.
-   Please note that this project is released with a [Code of
    Conduct](CONDUCT.html). If you contribute to this project you agree
    to abide by its terms.
