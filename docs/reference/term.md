# Student-level term data

Student-level term information for approximately 98,000 undergraduates,
keyed by student ID. Data at the "student-level" refers to information
collected by undergraduate institutions about individual students, for
example, program code, academic standing, and grade point average by
term.

## Usage

``` r
data(term)
```

## Format

A `data.frame` and `data.table` with 13 variables and approximately
640,000 observations of 97,555 unique students occupying 73 MB of
memory:

- `mcid`:

  Character, de-identified student ID. Key column.

- `institution`:

  Character, de-identified institution name, e.g., Institution A,
  Institution B, etc.

- `term`:

  Character, academic year and term, format YYYYT. Key column.

- `cip6`:

  Character, 6-digit CIP code of program in which a student is enrolled
  in a term, e.g., `090101`, `141201`, `260901`, `420101`, etc.

- `level`:

  Character, 01 Freshman, 02 Sophomore, etc. The equivalent values in
  the current practice data are 01 First-Year, 02-Second Year, etc.

- `standing`:

  Character, academic standing, e.g., `Good Standing`,
  `Academic Warning`, etc.

- `coop`:

  Character, cooperative education term, possible values are `Yes`,
  `No`.

- `hours_term`:

  Numeric, credit hours earned in the term.

- `hours_term_attempt`:

  Numeric, credit hours attempted in the term.

- `hours_cumul`:

  Numeric, cumulative credit hours earned.

- `hours_cumul_attempt`:

  Numeric, cumulative credit hours attempted.

- `gpa_term`:

  Numeric, term grade point average.

- `gpa_cumul`:

  Numeric, cumulative grade point average.

## Source

2022 [MIDFIELD](https://midfield.online/) database

## Details

Term data are structured in block-record form, that is, records
associated with a particular ID can span multiple rows—one record per
student per term.

Terms are encoded `YYYYT`, where `YYYY` is the year at the start of the
academic year and `T` encodes the semester or quarter within an academic
year as Fall (`1`), Winter (`2`), Spring (`3`), and Summer (`4`, `5`,
and `6`). For example, for academic year 1995–96, Fall 95–96 is encoded
`19951`, Spring 95–96 is encoded `19953`, and the first Summer 95-96
term is encoded `19954`. The source database includes special month-long
sessions encoded with letters `A`, `B`, `C`, etc., though none are
included in this sample.

For program codes, `midfielddata` uses the 2010 version of the
Classification of Instructional Programs (CIP). If the `midfieldr`
package is installed and loaded, type `?cip` for details.

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
[`student`](https://midfieldr.github.io/midfielddata/reference/student.md)

## Examples

``` r
if (FALSE) { # \dontrun{

# Load data
data(term)

# Select specific rows and columns
rows_we_want <- term$mcid == "MCID3112192438"
cols_we_want <- c("mcid", "term", "cip6", "level", "standing", "gpa_cumul")

# View observations for this ID
term[rows_we_want, cols_we_want]
} # }
```
