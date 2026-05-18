# midfielddata

## Overview

midfielddata is an R data package that provides anonymized student-level
records for 98,000 undergraduates at three US institutions from 1988
through 2018, collected in four data tables keyed by student ID:

- **student**   all students, their demographics, transfer status,
  institution, etc.
- **course**   all students, every course, course name, number, credit
  hours, grades, etc.
- **term**   all students, every term, program, standing, GPA, etc.
- **degree**   all graduating students, their degree(s), program(s),
  term

The data in midfielddata are a proportionate stratified sample of the
MIDFIELD database ([Ohland and Long 2016](#ref-aee2016)), but are not
suitable for drawing inferences about program attributes or student
experiences—midfielddata are for *practice*, not research.

Suggested packages.

- [midfieldr](https://CRAN.R-project.org/package=midfieldr) for working
  with MIDFIELD data ([Layton et al.
  2026](#ref-Layton+Long+Ohland:2026:midfieldr))
- [data.table](https://CRAN.R-project.org/package=data.table) for
  manipulating data ([Barrett et al.
  2026](#ref-Dowle+Srinivasan:2026:data.table))

## Installation

The installed size of midfielddata is about 24 Mb, so installation will
take longer than that of a conventional CRAN package. Install from the
MIDFIELDR drat repository with:

``` r

install.packages("midfielddata",
  repos = "https://MIDFIELDR.github.io/drat/",
  type = "source"
)
```

## Usage

Data tables can be loaded individually or collectively as needed.

``` r

library(midfielddata)

# Load one table as needed
data(student)

# Or load multiple tables
data(course, term, degree)
```

Tutorials:

- We examine these data in greater detail in the package
  [articles](https://midfieldr.github.io/midfielddata/articles/index.html).
- How one *uses* these data is developed in detail on the
  [midfieldr](https://midfieldr.github.io/midfieldr/) website.

## Acknowledgments

The development of midfieldr and midfielddata was supported by the US
National Science Foundation through grant numbers 1545667 and 2142087.

## References

Barrett, Tyson, Matt Dowle, Arun Srinivasan, et al. 2026. *data.table:
Extension of data.frame*. R package version 1.18.4.
<https://CRAN.R-project.org/package=data.table>.

Layton, Richard, Russell Long, Susan Lord, Matthew Ohland, and Marisa
Orr. 2026. *midfieldr: Tools and Methods for Working with MIDFIELD Data
in R*. R package version 1.0.0.
<https://github.com/MIDFIELDR/midfieldr>.

Ohland, Matthew W., and Russell A. Long. 2016. “The Multiple-Institution
Database for Investigating Engineering Longitudinal Development: An
Experiential Case Study of Data Sharing and Reuse.” *Advances in
Engineering Education* 5 (2).
<https://advances.asee.org/wp-content/uploads/vol05/issue02/Papers/AEE-18-Ohland.pdf>.
