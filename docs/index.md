# midfielddata

## Overview

Contains anonymized student-level records for 98,000 undergraduates from
three US institutions from 1988 through 2018 organized in four data
tables keyed by student ID. Student-level records are those collected by
undergraduate institutions on individual students including
demographics, programs and academic standing by term, individual
courses, grades, and degrees.

| Data table | Example of variables                                       |
|------------|------------------------------------------------------------|
| student    | ID, institution, transfer status, demographics, SAT, etc.  |
| course     | ID, institution, term, course name and number, grade, etc. |
| term       | ID, institution, term, program, level, standing, etc.,     |
| degree     | ID, institution, term, program, degree                     |

These data are a proportionate stratified sample of MIDFIELD ([Ohland
2023](#ref-ohland:midfield:2023)), a database managed since 2023 by the
American Society for Engineering Education. The midfielddata datasets
are suitable for practice working with student-level records using the
midfieldr package ([Layton et al.
2026](#ref-Layton+Long+Ohland:2026:midfieldr)) but are not, however,
suitable for drawing inferences about program attributes or student
experiences—midfielddata is for *practice*, not *research*.

## Installation

Install from the MIDFIELDR drat repository with:

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

Layton, Richard, Russell Long, Susan Lord, Matthew Ohland, and Marisa
Orr. 2026. *midfieldr: Tools and Methods for Working with MIDFIELD Data
in R*. R package version 1.0.0.
<https://github.com/MIDFIELDR/midfieldr>.

Ohland, Matthew. 2023. *MIDFIELD, 2004–2023*.
<https://midfield.online/>.
