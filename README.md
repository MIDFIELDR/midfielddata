
# midfielddata <a href="https://engineering.purdue.edu/MIDFIELD" target="blank"><img src="man/figures/midfieldcut.png" align="right"/></a>

[![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/midfielddata)](http://cran.r-project.org/package=midfielddata)
[![Build
Status](https://travis-ci.org/MIDFIELDR/midfielddata.svg?branch=master)](https://travis-ci.org/MIDFIELDR/midfielddata)
[![](https://cranlogs.r-pkg.org/badges/grand-total/midfielddata)](https://cran.r-project.org/package=midfielddata)
[![License](man/figures/License-CC-0-blue.svg)](https://creativecommons.org/publicdomain/zero/1.0/)

An R data package containing four data sets:

  - `midfieldstudents` Student demographic attributes.  
  - `midfieldcourses` Academic course attributes.  
  - `midfieldterms` Academic term attributes.  
  - `midfielddegrees` Student graduation attributes.

These data are a stratified sample of data from the
[MIDFIELD](https://engineering.purdue.edu/MIDFIELD) project, comprising
student records from registrars at participating US universities for
97,640 undergraduate students from 1987 to 2016.

Tools for accessing and analyzing these data are provided by the
[midfieldr](https://github.com/MIDFIELDR/midfieldr) package.

## Installation

Not yet submitted to CRAN, but will be soon. Currently passes R CMD
check with the results:

    0 errors | 0 warnings | 1 note 
    checking installed package size ... NOTE
      installed size is 30.8Mb
      sub-directories of 1Mb or more:
        data  30.7Mb

You can obtain the most recent devlopment version from GitHub.

``` r
install.packages("devtools")
devtools::install_github("MIDFIELDR/midfielddata")
```

## Meta

  - License:
    [CC0 1.0](https://creativecommons.org/publicdomain/zero/1.0/).
  - Please report any [issues or
    bugs](https://github.com/MIDFIELDR/midfielddata/issues).
  - Get citation information with `citation("midfielddata")`.
  - Please note that this project is released with a [Code of
    Conduct](CONDUCT.md). If you contribute to this project you agree to
    abide by its terms.
