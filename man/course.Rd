% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/course.R
\docType{data}
\name{course}
\alias{course}
\title{Student-level course data}
\format{
A \code{data.frame} and \code{data.table} with 12 variables and approximately
3.3M observations of 97,555 unique students occupying 325 MB of memory:

\describe{
\item{\code{mcid}}{Character, anonymized student identifier, e.g., \code{MCID3111142225}.}
\item{\code{institution}}{Character, de-identified institution name, e.g., Institution
A, Institution B, etc.}
\item{\code{term_course}}{Character, academic year and term, format YYYYT.}
\item{\code{course}}{Character, course name, e.g., \verb{Astrophysics III},
\verb{Calculus For Social Science And Business}, \verb{Corp Financial Rprtng 1},
\verb{Environmental Sanitation II}, \verb{Fitness and Wellness},
\verb{Introductory Astronomy 2}, \verb{Our Changing Environment}, etc.}
\item{\code{abbrev}}{Character, course alpha identifier, e.g. \code{AA}, \code{MATH},
\code{ACCT}, \code{EH}, \code{HES}, \code{ASTR}, etc.}
\item{\code{number}}{Character, course numeric identifier, e.g. \code{1104}, \code{1209},
\code{228}, \code{4047}, etc.}
\item{\code{section}}{Character, course section identifier, from one to four
characters, e.g., \code{1}, \code{2}, \code{01}, \code{14}, \code{001}, \code{040}, \code{785},
\code{H02}, \code{R01}, \verb{300E}, \verb{888R}, etc.}
\item{\code{type}}{Character, predominant delivery method for this section, e.g.,
\code{Blended}, \verb{Distance Education}, \code{Face-to-Face}, \code{Online}, etc.}
\item{\code{faculty_rank}}{Character, academic rank of the person teaching the
course, e.g., \verb{Assistant Professor}, \verb{Associate Professor},
\verb{Graduate Assistant}, \verb{Visiting Faculty}, etc.}
\item{\code{hours_course}}{Numeric, number of credit-hours for successful course
completion.}
\item{\code{grade}}{Character, course grade, e.g., \verb{A+}, \code{A}, \verb{A-}, \verb{B+},
\code{I}, \code{NG}, etc.}
\item{\code{discipline_midfield}}{Character, a variable for grouping courses by
academic discipline assigned by the MIDFIELD data curator, e.g.,
\code{Anthropology}, \code{Business}, \verb{Computer Science},
\code{Engineering}, \verb{Language and Literature}, \code{Mathematics},
\verb{Visual and Performing Arts}, etc.}
}
}
\source{
2022 \href{https://midfield.online/}{MIDFIELD} database
}
\usage{
data(course)
}
\description{
Student-level course information for approximately 98,000 undergraduates,
keyed by student ID. Data at the "student-level" refers to information
collected by undergraduate institutions about individual students, for
example, course name and number, credit hours, and student grades.
}
\details{
Course data are structured in block-record form, that is, records associated
with a particular ID can span multiple rows---one record per student per
course per term.

Terms are encoded \code{YYYYT}, where \code{YYYY} is the year at the start of the
academic year and \code{T} encodes the semester or quarter within an academic year
as Fall (\code{1}), Winter (\code{2}), Spring (\code{3}), and Summer (\code{4}, \code{5}, and \code{6}).
For example, for academic year 1995--96, Fall 95--96 is encoded \code{19951},
Spring 95--96 is encoded \code{19953}, and the first Summer 95-96 term is encoded
\code{19954}. The source database includes special month-long sessions encoded
with letters \code{A}, \code{B}, \code{C}, etc., though none are included in this sample.

The possible values of the \code{grade} variable includes \code{NG} for "no grade
given", which is not the same as \code{W} indicating a withdrawal. For example,
a lab course may be a mandatory co-requisite for a lecture course, but a
grade is given for the lecture course and the lab grade is recorded as \code{NG}.

The data in \code{midfielddata} are a proportionate stratified sample of the
MIDFIELD database, but are not suitable for drawing inferences about program
attributes or student experiences---\code{midfielddata} provides practice data,
not research data.
}
\examples{
\dontrun{

# Load data
data(course)

# Select specific rows and columns
rows_we_want <- course$mcid == MCID3112192438
cols_we_want <- c(mcid, term_course, course, grade)

# View observations for this ID 
course[rows_we_want, cols_we_want]

}

}
\seealso{
Package \href{https://midfieldr.github.io/midfieldr/}{\code{midfieldr}}
for tools and methods for working with MIDFIELD data in \code{R}.

Other datasets: 
\code{\link{degree}},
\code{\link{student}},
\code{\link{term}}
}
\concept{datasets}
\keyword{datasets}
