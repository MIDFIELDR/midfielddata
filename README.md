
<!-- README.md is generated from README.Rmd. Please edit that file -->

# midfielddata

Sample of MIDFIELD student unit record data

<!-- badges: start -->

[![License](man/figures/License-CC-0-blue.svg)](https://creativecommons.org/publicdomain/zero/1.0/)
<!-- badges: end -->

The goal of *midfielddata* is to provide a proportionate stratified
sample of MIDFIELD data for practice working with longitudinal,
de-identified, individual student unit records from multiple US
institutions.

## Background

[MIDFIELD](https://engineering.purdue.edu/MIDFIELD) (as of May 2021)
contains individual student unit record (SUR) data for 1.7M unique
students at 33 US institutions. MIDFIELD is large enough to permit
grouping and summarizing by multiple characteristics simultaneously,
enabling researchers to examine student characteristics (race/ethnicity,
sex, prior achievement) and curricular pathways (including coursework
and major) by institution and over time.

*midfielddata* provides a sample of these data (for practice) with
longitudinal SURs for 98,000 undergraduates at 12 institutions from
1987–2016 organized in four data tables:

-   [`student`](https://midfieldr.github.io/midfielddata/reference/student.html)
    97,640 rows and 13 columns
-   [`course`](https://midfieldr.github.io/midfielddata/reference/course.html)
    3.5M rows and 12 columns  
-   [`term`](https://midfieldr.github.io/midfielddata/reference/term.html)
    728,000 rows and 13 columns  
-   [`degree`](https://midfieldr.github.io/midfielddata/reference/degree.html)
    47,500 rows and 5 columns

## Usage

``` r
# packages used 
library("midfielddata")

# Load the individual data tables as needed
data(student)
data(term)
data(course)
data(degree)


# Alternatively, load more than one at a time
data(student, term, degree)
```

-   Each data set has a `data.table` structure.
-   Tools for working these data are provided by the
    [*midfieldr*](https://midfieldr.github.io/midfieldr) package.

## Requirements

-   [R](https://www.r-project.org/) (>= 3.5.0)
-   [*data.table*](https://rdatatable.gitlab.io/data.table/)
    Recommended, not required.

## Installation

Because of the size of the data tables, installing the *midfielddata*
takes time; please be patient and wait for the prompt “\>” to reappear.
In the Console, run:

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

<img src="man/figures/README-midfielddata-help-page-1.png" align="center" style="width: 75vw; min-width: 330px;"/><br>

## Build

*midfielddata* currently passes R CMD check with the results:

    0 errors v | 0 warnings v | 1 note x

    NOTE installed size is 18.5Mb
         sub-directories of 1Mb or more: data  18.4Mb

    R CMD check succeeded  

## Contributing

-   As a data package, contributions are not expected.
-   Please use the GitHub
    [Issues](https://github.com/MIDFIELDR/midfielddata/issues) page to
    report bugs or provide feedback.
-   Participation in this open source project is subject to a [Code of
    Conduct](CONDUCT.html).

## Related work

-   [*midfieldr*](https://midfieldr.github.io/midfieldr/) Tools for
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

*midfielddata* is licensed under [CC0
1.0](https://creativecommons.org/publicdomain/zero/1.0/legalcode)
