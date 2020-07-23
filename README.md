
# midfielddata <span class="border-wrap"><img src="man/figures/midfieldhex05.png" align="right" height="122" width="106" alt="logo.png"></span>

[![Build
Status](https://travis-ci.org/MIDFIELDR/midfielddata.svg?branch=master)](https://travis-ci.org/MIDFIELDR/midfielddata)
[![License](man/figures/License-CC-0-blue.svg)](https://creativecommons.org/publicdomain/zero/1.0/)

An R data package containing four data sets:

  - `midfieldstudents` student demographic attributes
  - `midfieldcourses` academic course attributes
  - `midfieldterms` academic term attributes
  - `midfielddegrees` student graduation attributes

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

  - Get citation information with `citation("midfielddata")`.
  - Please note that this project is released with a [Code of
    Conduct](CONDUCT.md). If you contribute to this project you agree to
    abide by its terms.
