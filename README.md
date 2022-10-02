
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

<a href="https://midfield.online"
target="_blank"><strong>MIDFIELD</strong></a> (as of June 2022) contains
Student Unit Records (SURs) of 1.7M undergraduates at nineteen US
institutions from 1987 through 2018, though different institutions
provide data over different time spans. MIDFIELD is large enough to
permit summarizing by multiple characteristics such as race/ethnicity,
sex, and program.

[**midfieldr**](https://midfieldr.github.io/midfieldr/) is an R package
that provides tools for working with MIDFIELD research data and with the
practice data in the midfielddata R package.

**midfielddata** is an R data package that provides practice data (a
proportionate stratified sample of MIDFIELD) with longitudinal SURs for
nearly 98,000 undergraduates at 12 institutions from 1987–2016 organized
in four data tables:

<table class=" lightable-paper" style="font-family: &quot;Arial Narrow&quot;, arial, helvetica, sans-serif; margin-left: auto; margin-right: auto;">
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
student
</td>
<td style="text-align:left;color: black !important;background-color: white !important;">
a degree-seeking student
</td>
<td style="text-align:right;color: black !important;background-color: white !important;">
97,640
</td>
<td style="text-align:right;color: black !important;background-color: white !important;">
13
</td>
<td style="text-align:right;">
19 Mb
</td>
</tr>
<tr>
<td style="text-align:left;font-family: monospace;color: black !important;background-color: white !important;">
course
</td>
<td style="text-align:left;color: black !important;background-color: white !important;">
a student in a course
</td>
<td style="text-align:right;color: black !important;background-color: white !important;">
3.5M
</td>
<td style="text-align:right;color: black !important;background-color: white !important;">
12
</td>
<td style="text-align:right;">
340 Mb
</td>
</tr>
<tr>
<td style="text-align:left;font-family: monospace;color: black !important;background-color: white !important;">
term
</td>
<td style="text-align:left;color: black !important;background-color: white !important;">
a student in a term
</td>
<td style="text-align:right;color: black !important;background-color: white !important;">
728,000
</td>
<td style="text-align:right;color: black !important;background-color: white !important;">
13
</td>
<td style="text-align:right;">
80 Mb
</td>
</tr>
<tr>
<td style="text-align:left;font-family: monospace;color: black !important;background-color: white !important;">
degree
</td>
<td style="text-align:left;color: black !important;background-color: white !important;">
a student who graduates
</td>
<td style="text-align:right;color: black !important;background-color: white !important;">
48,000
</td>
<td style="text-align:right;color: black !important;background-color: white !important;">
5
</td>
<td style="text-align:right;">
10.2 Mb
</td>
</tr>
</tbody>
</table>

## Usage

``` r
# Load the package
library("midfielddata")

# Load individual data tables as needed
data(student)
data(term)
data(course)
data(degree)

# Alternatively, load several tables with one line
data(student, term, degree)
```

## Requirements

-   [R](https://www.r-project.org/) (\>= 3.5.0)

## Installation

Because of the size of the data tables, installing midfielddata takes
time; please be patient and wait for the prompt “\>” to reappear. In the
Console, run:

``` r
# Type in the Console
install.packages("midfielddata",
  repos = "https://MIDFIELDR.github.io/drat/",
  type = "source"
)
# be patient
```

You can confirm a successful installation by running the following lines
to bring up the package help page in the Help window.

``` r
# Confirm successful installation
library("midfielddata")
help("midfielddata-package")
```

<img src="man/figures/README-midfielddata-help-page-1.png" width="75%" />

## Build

midfielddata currently passes R CMD check with the results shown below.
As a general rule, CRAN expects packages to not exceed 5 Mb, hence the
“note” below.

    0 errors | 0 warnings | 1 note 

    NOTE  installed size is 18.4Mb
          sub-directories of 1Mb or more:
          data 18.0Mb

    R CMD check succeeded  

## Contributing

-   Because this is a data package, contributions would not generally be
    expected. However, bug reports and feedback are welcome via the
    GitHub [Issues](https://github.com/MIDFIELDR/midfielddata/issues)
    page.

-   Participation in this open source project is subject to a [Code of
    Conduct](CONDUCT.html).

## Acknowledgments

This work is supported by grants from the US National Science Foundation
(EEC 1545667).

## License

[![License](man/figures/License-CC-0-blue.svg)](https://creativecommons.org/publicdomain/zero/1.0/)

*midfielddata*, written in 2018–2022 by Richard Layton, Russell Long,
Matthew Ohland, Marisa Orr, and Susan Long, is licensed under CC0 1.0
[(CC0
summary)](https://creativecommons.org/publicdomain/zero/1.0/legalcode)
[(CC0 full license)](LICENSE.html).

To the extent possible under law, the authors have dedicated all
copyright and related and neighboring rights to this software to the
public domain worldwide. This software is distributed without any
warranty.
