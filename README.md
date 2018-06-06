
# midfielddata <a href="https://engineering.purdue.edu/MIDFIELD" target="blank"><img src="man/figures/midfieldcut.png" align="right"/></a>

[![License](man/figures/License-CC-0-blue.svg)](https://creativecommons.org/publicdomain/zero/1.0/)
[![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/midfielddata)](http://cran.r-project.org/package=midfielddata)
[![Build
Status](https://travis-ci.org/MIDFIELDR/midfielddata.svg?branch=master)](https://travis-ci.org/MIDFIELDR/midfielddata)
[![Coverage
Status](https://img.shields.io/codecov/c/github/MIDFIELDR/midfielddata/master.svg)](https://codecov.io/github/MIDFIELDR/midfielddata?branch=master)

An R data package containing four data sets:

  - `midfieldstudents`. Student demographic attributes.  
  - `midfieldcourses`. Academic course attributes.  
  - `midfieldterms`. Academic term attributes.  
  - `midfielddegrees`. Student graduation attributes.

These data are a stratified sample of data from the MIDFIELD project,
comprising student records from registrars at participating US
universities for 97,640 undergraduate students from 1987 to 2016.

The datasets have at least two variables in common for
cross-referencing: anonymized identifiers for both student and
institution. For more about any data set, run its help page, e.g.,
`?midfieldstudents`, `?midfieldcourses`, etc.

Tools for accessing and analyzing these data are provided by the
[midfieldr](https://github.com/MIDFIELDR/midfieldr) package.

## Installation

midfielddata is not currently available from CRAN.

The development version can be installed from GitHub with:

``` r
install.packages("devtools")
devtools::install_github("MIDFIELDR/midfielddata")
```

## Meta

  - Please [report any issues or
    bugs](https://github.com/MIDFIELDR/midfielddata/issues).
  - License: CC0.
  - Get citation information with `citation(package = 'midfielddata')`.
  - Please note that this project is released with a [Code of
    Conduct](CONDUCT.md). If you contribute to this project you agree to
    abide by its terms.
