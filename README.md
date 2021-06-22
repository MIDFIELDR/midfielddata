
# midfielddata <span class="border-wrap"><img src="man/figures/midfieldhex05.png" align="right" height="122" width="106" alt="logo.png"></span>

<!-- badges: start -->

[![License](man/figures/License-CC-0-blue.svg)](https://creativecommons.org/publicdomain/zero/1.0/)
<!-- badges: end -->

An R data package containing four data sets:

-   [`student`](reference/student.html) Table of attributes of
    approximately 98,000 students upon being admitted as degree-seeking
    undergraduates. Each observation is a unique student keyed by
    student ID.

-   [`course`](reference/course.html) Table of course-related attributes
    of approximately 98,000 undergraduates enrolled in courses at their
    institutions. Each observation is one course in one term for one
    student keyed by student ID and a combination of course,
    abbreviation, number, and section.

-   [`term`](reference/term.html) Table of term-related attributes of
    approximately 96,000 undergraduates for all terms completed at their
    institutions. Each observation is one term for one student keyed by
    student ID and term.

-   [`degree`](reference/degree.html) Table of degree-related attributes
    of approximately 48,000 undergraduates upon completing their
    programs. Each observation is a unique student keyed by student ID.

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
\> to reappear.

``` r
install.packages("midfielddata", 
                 repos = "https://MIDFIELDR.github.io/drat/", 
                 type  = "source")
```

When installed and loaded, each data set has a `data.table` structure.

## The build

midfielddata currently passes R CMD check with the results:

    0 errors v | 0 warnings v | 1 note x

    NOTE installed size is 18.5Mb
         sub-directories of 1Mb or more: data  18.4Mb

    R CMD check succeeded  

## Meta

-   For more information about
    [MIDFIELD](https://engineering.purdue.edu/MIDFIELD)  
-   Getting started with R using [MIDFIELD workshop
    materials](https://midfieldr.github.io/2021-asee-workshop/)  
-   Get citation information with `citation("midfielddata")`
-   This project is released with a [Code of Conduct](CONDUCT.html). If
    you contribute to this project you agree to abide by its terms.
