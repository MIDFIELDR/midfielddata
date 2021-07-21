
<!-- README.md is generated from README.Rmd. Please edit that file -->

# midfielddata

Sample of the MIDFIELD Student Unit Record Data

<!-- badges: start -->

[![License](man/figures/License-CC-0-blue.svg)](https://creativecommons.org/publicdomain/zero/1.0/)
<!-- badges: end -->

The goal of midfielddata is to provide a sample of MIDFIELD data for
practice working with longitudinal, de-identified, individual student
unit records.

## Overview

[**MIDFIELD**](https://engineering.purdue.edu/MIDFIELD) contains
individual Student Unit Record (SUR) data for 1.7M students at 33 US
institutions (as of June 2021). MIDFIELD is large enough to permit
grouping and summarizing by multiple characteristics, enabling
researchers to examine student characteristics (race/ethnicity, sex,
prior achievement) and curricular pathways (including coursework and
major) by institution and over time.

[**midfieldr**](https://midfieldr.github.io/midfieldr/) is an R package
that provides tools for working with MIDFIELD SURs. The tools in
midfieldr work equally well with the research data in MIDFIELD and the
practice data in midfielddata.

**midfielddata** is an R data package that provides practice data (a
proportionate stratified sample of MIDFIELD) with longitudinal SURs for
nearly 98,000 undergraduates at 12 institutions from 1987–2016 organized
in four data tables:

| Data set                                                                     | Each row is                           | N rows | N columns |
|:-----------------------------------------------------------------------------|:--------------------------------------|-------:|----------:|
| [`student`](https://midfieldr.github.io/midfielddata/reference/student.html) | a student upon being admitted         |    98k |        13 |
| [`course`](https://midfieldr.github.io/midfielddata/reference/course.html)   | a student in a course                 |   3.4M |        12 |
| [`term`](https://midfieldr.github.io/midfielddata/reference/term.html)       | a student in a term                   |   711k |        13 |
| [`degree`](https://midfieldr.github.io/midfielddata/reference/degree.html)   | a student who completes their program |    48k |         5 |

## Usage

``` r
library("midfielddata") # required


# Load the individual data tables as needed
data(student)
data(term)
data(course)
data(degree)


# Alternatively, load several tables with one line
data(student, term, degree)
```

## Requirements

-   [R](https://www.r-project.org/) (>= 3.5.0)

## Installation

Because of the size of the data tables, installing midfielddata takes
time; please be patient and wait for the prompt “\>” to reappear. In the
Console, run:

``` r
# install midfielddata  
install.packages("midfielddata", 
                 repos = "https://MIDFIELDR.github.io/drat/", 
                 type = "source")
# be patient
```

You can confirm a successful installation by running the following lines
to bring up the package help page in the Help window.

``` r
library("midfielddata")
help("midfielddata-package")
```

<img src="man/figures/README-midfielddata-help-page-1.png" width="75%" />

## Build

midfielddata currently passes R CMD check with the results:

    0 errors v | 0 warnings v | 1 note x

    NOTE installed size is 18.5Mb
         sub-directories of 1Mb or more: data  18.4Mb

    R CMD check succeeded  

## Contributing

-   Because this is a data package, contributions would not generally be
    expected. However, bug reports and feedback are welcome via the
    GitHub [Issues](https://github.com/MIDFIELDR/midfielddata/issues)
    page.
-   Participation in this open source project is subject to a [Code of
    Conduct](CONDUCT.html).

## Related work

-   [midfieldr](https://midfieldr.github.io/midfieldr/) : Tools for
    studying MIDFIELD student unit record data in R.
-   [MIDFIELD](https://engineering.purdue.edu/MIDFIELD) A partnership of
    US institutions.
-   [MIDFIELD
    workshops](https://midfieldr.github.io/2021-asee-workshop/) for
    additional information and tutorials.

## Acknowledgments

This work is supported by a grant from the US National Science
Foundation (EEC 1545667).

## License

midfielddata is licensed under [CC0
1.0](https://creativecommons.org/publicdomain/zero/1.0/legalcode)
