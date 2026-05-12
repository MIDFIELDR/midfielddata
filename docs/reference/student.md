# Student-level demographic data

Student-level demographic information for approximately 98,000
degree-seeking undergraduate students, keyed by student ID. Data at the
"student-level" refers to information collected by undergraduate
institutions about individual students, for example, age, sex, and
race/ethnicity at matriculation.

## Usage

``` r
data(student)
```

## Format

A `data.frame` and `data.table` with 13 variables and 97,555
observations of unique students occupying 18 MB of memory:

- `mcid`:

  Character, anonymized student identifier, e.g., `MCID3111142225`.

- `institution`:

  Character, de-identified institution name, e.g., Institution A,
  Institution B, etc.

- `transfer`:

  Character, transfer status, possible values are
  `First-Time in College`, `First-Time Transfer`.

- `hours_transfer`:

  Numeric, number of credit hours transferred (or `NA`).

- `race`:

  Character, race/ethnicity as self-reported by the student, e.g.,
  Asian, Black, Hispanic, etc.

- `sex`:

  Character, sex as self-reported by the student, possible values are
  Female, Male, and Unknown.

- `age_desc`:

  Character, age group, possible values are `25 and Older`, `Under 25`.

- `us_citizen`:

  Character, US citizenship, possible values are `No`, `Yes`.

- `home_zip`:

  Character, home ZIP code (or `NA`), e.g., `02056`, `20170`, `51301`,
  `80129`, etc.

- `high_school`:

  Character, code for the last high school attended before admission (or
  `NA`), e.g., `060075`, `210512`, `431800`, `502195`, etc.

- `sat_math`:

  Numeric, SAT mathematics test score (or `NA`).

- `sat_verbal`:

  Numeric, SAT reading test score (or `NA`).

- `act_comp`:

  Numeric, ACT composite test score (or `NA`).

## Source

2022 [MIDFIELD](https://midfield.online/) database

## Details

Student data are structured in row-record form, that is, information
associated with a particular ID occupies a single row—one record per
student.

The data in `midfielddata` are a proportionate stratified sample of the
MIDFIELD database, but are not suitable for drawing inferences about
program attributes or student experiences—`midfielddata` provides
practice data, not research data.

## See also

Package [`midfieldr`](https://midfieldr.github.io/midfieldr/) for tools
and methods for working with MIDFIELD data in `R`.

Other datasets:
[`course`](https://midfieldr.github.io/midfielddata/reference/course.md),
[`degree`](https://midfieldr.github.io/midfielddata/reference/degree.md),
[`term`](https://midfieldr.github.io/midfielddata/reference/term.md)

## Examples

``` r
if (FALSE) { # \dontrun{

# Load data
data(student)

# Select specific rows and columns
rows_we_want <- student$mcid == MCID3112192438
cols_we_want <- c(mcid, institution, transfer, race, sex, age_desc)

# View observations for this ID
student[rows_we_want, cols_we_want]
} # }
```
