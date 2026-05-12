  
midfielddata is an R data package that supplies anonymized student-level
records for 98,000 undergraduates from the MIDFIELD database. Provides
practice data for the tools and methods of the midfieldr package.

![](reference/figures/logo.png)

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

midfielddata provides anonymized student-level records for 98,000
undergraduates at three US institutions from 1988 through 2018,
collected in four data tables keyed by student ID.

| Dataset | Each row is | Students | Rows | Columns | Memory (Mb) |
|----|----|----|----|----|----|
| course | one student per term per course | 97,555 | 3,289,532 | 12 | 324.3 |
| term | one student per term | 97,555 | 639,915 | 13 | 72.8 |
| student | one student | 97,555 | 97,555 | 13 | 17.3 |
| degree | one student per degree | 49,543 | 49,665 | 5 | 5.2 |

Table 1: Practice datasets in midfielddata {.table .gt_table
quarto-disable-processing="false" quarto-bootstrap="false"}

The data in midfielddata are a proportionate stratified sample of the
[MIDFIELD](#more-information) database, but are *not suitable for
drawing inferences* about program attributes or student
experiences—midfielddata are for *practice*, not research.

*Notes on syntax.*   We use data.table for data manipulation. For users
who prefer base R or dplyr, our website for the 2024 MIDFIELD Institute
[\[link\]](https://midfieldr.github.io/2024-midfield-institute/data-shaping-00-introduction.html)
includes a sequence of tutorials that addresses the needs of users who
would prefer to translate our data.table syntax to their preferred
system. We illustrate common MIDFIELD data shaping tasks three ways:
using base R, data.table, and dplyr systems.

## Usage

We generally use these two packages when loading these data:

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

We examine these data in greater detail in the package
[\[articles\]](https://midfieldr.github.io/midfielddata/articles/index.html).
In addition, how one *uses* these data is developed in detail on the
website for [\[midfieldr\]](https://midfieldr.github.io/midfieldr/).

## Installation

The installed size of midfielddata is about 24 Mb, so installation will
take longer than that of a conventional CRAN package. Also because of
its size, the package is not hosted on CRAN (with its 5 MB size
limit)—instead, we host it on the MIDFIELDR `drat` repository as
indicated above.

Install with:

``` r

install.packages("midfielddata",
  repos = "https://MIDFIELDR.github.io/drat/",
  type = "source"
)
```

## More information

[\[midfieldr\]](https://midfieldr.github.io/midfieldr/)  
A companion R package that provides tools and methods for studying
undergraduate student-level records from the MIDFIELD database.

[\[MIDFIELD\]](https://midfield.online/)  
A database of anonymized student-level records for approximately 2.4M
undergraduates at 21 US institutions from 1987-2022. Access to this
database requires a confidentiality agreement and Institutional Review
Board (IRB) approval for human subjects research. For a detailed
description of the database, see ([Ohland and Long 2016](#ref-aee2016)).

## Acknowledgments

This work was supported by the US National Science Foundation through
grant numbers 1545667 and 2142087.

## References

Ohland, Matthew W., and Russell A. Long. 2016. “The Multiple-Institution
Database for Investigating Engineering Longitudinal Development: An
Experiential Case Study of Data Sharing and Reuse.” *Advances in
Engineering Education* 5 (2).
<https://advances.asee.org/wp-content/uploads/vol05/issue02/Papers/AEE-18-Ohland.pdf>.
