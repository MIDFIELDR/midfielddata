# Data linked by student ID

To examine the variables and some representative values in midfielddata,
we take a closer look at the records of individual students across the
four data tables.

## Load data

*Start.*   If you are writing your own script to follow along, we use
these packages in this article:

``` r

library(midfielddata)
library(data.table)

# data.table printout option
options(datatable.print.nrows = 70)
```

*Load data tables.*   Data tables can be loaded individually or
collectively as needed.

``` r

# Load one table as needed
data(student)

# Or load multiple tables
data(course, term, degree)
```

View data dictionaries on the help pages using
[`?student`](https://midfieldr.github.io/midfielddata/reference/student.md),
[`?course`](https://midfieldr.github.io/midfielddata/reference/course.md),
[`?term`](https://midfieldr.github.io/midfielddata/reference/term.md),
[`?degree`](https://midfieldr.github.io/midfielddata/reference/degree.md).

## Student 1: Degree in psychology and sociology

We display the records for one specific student, using their ID to
subset each data table.

``` r

# One student ID
id_we_want <- "MCID3112192438"
```

*student.*   Yields one row per student.

``` r

# Observations for a selected ID
DT <- student[mcid == id_we_want]

# display
DT
#>              mcid   institution              transfer hours_transfer   race
#>            <char>        <char>                <char>          <num> <char>
#> 1: MCID3112192438 Institution C First-Time in College             NA  White
#>       sex age_desc us_citizen home_zip high_school sat_math sat_verbal act_comp
#>    <char>   <char>     <char>   <char>      <char>    <num>      <num>    <num>
#> 1: Female Under 25        Yes    80521        <NA>      580        390       27
```

*course.*   For this student, the course records span 47 rows, one row
per course.

``` r

# Observations for a selected ID
DT <- course[mcid == id_we_want]

# display
DT
#>               mcid   institution term_course                         course
#>             <char>        <char>      <char>                         <char>
#>  1: MCID3112192438 Institution C       20051 Key Academic Community Seminar
#>  2: MCID3112192438 Institution C       20051       Humans and Other Animals
#>  3: MCID3112192438 Institution C       20051            Health and Wellness
#>  4: MCID3112192438 Institution C       20051            College Composition
#>  5: MCID3112192438 Institution C       20051      Moral and Social Problems
#>  6: MCID3112192438 Institution C       20053 Africn-Americn Hist Since 1865
#>  7: MCID3112192438 Institution C       20053  Individual&Family Development
#>  8: MCID3112192438 Institution C       20053           First-Year Spanish I
#>  9: MCID3112192438 Institution C       20061  Chicana/o History and Culture
#> 10: MCID3112192438 Institution C       20061   Basic Concepts of Plant Life
#> 11: MCID3112192438 Institution C       20061  Basic Concepts-Plant Life Lab
#> 12: MCID3112192438 Institution C       20061                    Advertising
#> 13: MCID3112192438 Institution C       20061    Ldrshp in Higher Ed Environ
#> 14: MCID3112192438 Institution C       20061 Introductn to Criminal Justice
#> 15: MCID3112192438 Institution C       20063          First-Year Spanish II
#> 16: MCID3112192438 Institution C       20063 Contemporary Sociolgicl Theory
#> 17: MCID3112192438 Institution C       20071    Introduction to Social Work
#> 18: MCID3112192438 Institution C       20071  Human Behavior Social Environ
#> 19: MCID3112192438 Institution C       20071 Practicum-Communication Skills
#> 20: MCID3112192438 Institution C       20071 Methds of Sociological Inquiry
#> 21: MCID3112192438 Institution C       20073      Psychology of Differences
#> 22: MCID3112192438 Institution C       20073  Research Methds in Psychology
#> 23: MCID3112192438 Institution C       20073              Social Psychology
#> 24: MCID3112192438 Institution C       20073 Introductn-Statistical Methods
#> 25: MCID3112192438 Institution C       20081              Writing Arguments
#> 26: MCID3112192438 Institution C       20081      Organizational Psychology
#> 27: MCID3112192438 Institution C       20081  Organizational Psychology Lab
#> 28: MCID3112192438 Institution C       20081  History&Systems of Psychology
#> 29: MCID3112192438 Institution C       20081  Computer Methods in Sociology
#> 30: MCID3112192438 Institution C       20081          Sociology of Disaster
#> 31: MCID3112192438 Institution C       20083 Concepts-Human Anat&Physiology
#> 32: MCID3112192438 Institution C       20083 Principles of Human Physiology
#> 33: MCID3112192438 Institution C       20083      Mind, Brain, and Behavior
#> 34: MCID3112192438 Institution C       20083       Sensation and Perception
#> 35: MCID3112192438 Institution C       20083   Sensation and Perception Lab
#> 36: MCID3112192438 Institution C       20083           Symbolic Interaction
#> 37: MCID3112192438 Institution C       20091  Psychology of Human Sexuality
#> 38: MCID3112192438 Institution C       20091            Abnormal Psychology
#> 39: MCID3112192438 Institution C       20091          Social Stratification
#> 40: MCID3112192438 Institution C       20091                     Internship
#> 41: MCID3112192438 Institution C       20091                        Seminar
#> 42: MCID3112192438 Institution C       20093 Introduction to Ethnic Studies
#> 43: MCID3112192438 Institution C       20093              Independent Study
#> 44: MCID3112192438 Institution C       20093          Leadership for Greeks
#> 45: MCID3112192438 Institution C       20093            Health and the Mind
#> 46: MCID3112192438 Institution C       20093   Social Psychology Laboratory
#> 47: MCID3112192438 Institution C       20093                    Group Study
#>               mcid   institution term_course                         course
#>             <char>        <char>      <char>                         <char>
#>     abbrev number section         type              faculty_rank hours_course
#>     <char> <char>  <char>       <char>                    <char>        <num>
#>  1:     KA    192     009         <NA>                Instructor            3
#>  2:   BZCC    101     002         <NA>       Assistant Professor            3
#>  3:   EXCC    145     004         <NA> Non-Academic Professional            3
#>  4:   COCC    150     120         <NA>                Instructor            3
#>  5:   PLCC    103     033         <NA>                Instructor            3
#>  6:   ETCC    251     001         <NA>                Instructor            3
#>  7:   HDCC    101     003         <NA>        Graduate Assistant            3
#>  8:      L    105     001         <NA>        Graduate Assistant            5
#>  9:   ETCC    253     001         <NA>       Assistant Professor            3
#> 10:   BZCC    104     001         <NA>        Graduate Assistant            3
#> 11:   BZCC    105     L02         <NA>        Graduate Assistant            1
#> 12:     JT    250     001         <NA>       Associate Professor            3
#> 13:     IU    272     001         <NA>     Academic Professional            3
#> 14:      S    253     001         <NA>                Instructor            3
#> 15:      L    107     001         <NA>                Instructor            5
#> 16:      S    302     001         <NA>       Assistant Professor            3
#> 17:   SOWK    150     001 Face-to-Face                Instructor            3
#> 18:   SOWK    233     001 Face-to-Face       Assistant Professor            3
#> 19:   SOWK    286     L01 Face-to-Face     Academic Professional            3
#> 20:    SOC    311     001 Face-to-Face       Assistant Professor            3
#> 21:    PSY    210     001 Face-to-Face        Graduate Assistant            3
#> 22:    PSY    250     001 Face-to-Face          Research Faculty            4
#> 23:    PSY    315     001 Face-to-Face        Graduate Assistant            3
#> 24:   STAT    301     002 Face-to-Face        Graduate Assistant            3
#> 25:     CO    300     025 Face-to-Face                Instructor            3
#> 26:    PSY    340     001 Face-to-Face       Associate Professor            3
#> 27:    PSY    341     L01 Face-to-Face        Graduate Assistant            1
#> 28:    PSY    401     001 Face-to-Face       Assistant Professor            3
#> 29:    SOC    313     001 Face-to-Face                Instructor            1
#> 30:    SOC    463     001 Face-to-Face       Assistant Professor            3
#> 31:    BMS    200     006 Face-to-Face        Graduate Assistant            1
#> 32:    BMS    300     001 Face-to-Face       Associate Professor            4
#> 33:    PSY    252     002 Face-to-Face        Graduate Assistant            3
#> 34:    PSY    456     001 Face-to-Face       Assistant Professor            3
#> 35:    PSY    457     L02 Face-to-Face        Graduate Assistant            2
#> 36:    SOC    371     001 Face-to-Face       Assistant Professor            3
#> 37:    PSY    228     001 Face-to-Face       Assistant Professor            3
#> 38:    PSY    320     001 Face-to-Face                 Professor            3
#> 39:    SOC    330     001 Face-to-Face       Assistant Professor            3
#> 40:    SOC    487     L01 Face-to-Face        Graduate Assistant            3
#> 41:    SOC    492     001 Face-to-Face        Graduate Assistant            1
#> 42:   ETST    100     003 Face-to-Face                Instructor            3
#> 43:     WS    495     002 Face-to-Face     Academic Professional            1
#> 44:     IU    273     001 Face-to-Face        Graduate Assistant            2
#> 45:    PSY    121     001 Face-to-Face Non-Academic Professional            1
#> 46:    PSY    317     L02 Face-to-Face        Graduate Assistant            2
#> 47:    PSY    496     004 Face-to-Face                Instructor            3
#>     abbrev number section         type              faculty_rank hours_course
#>     <char> <char>  <char>       <char>                    <char>        <num>
#>      grade                             discipline_midfield
#>     <char>                                          <char>
#>  1:      A                                Academic Support
#>  2:      B      Biological and Biomedical Sciences: Botany
#>  3:      A                Education: Physical and Coaching
#>  4:      A                Language and Literature: English
#>  5:      A                                      Philosophy
#>  6:     B+                            Area Studies: Ethnic
#>  7:      B Family and Consumer Sciences: Human Development
#>  8:     A-                Language and Literature: Foreign
#>  9:     C+                            Area Studies: Ethnic
#> 10:      B      Biological and Biomedical Sciences: Botany
#> 11:      A      Biological and Biomedical Sciences: Botany
#> 12:     B-        Communication and Journalism: Journalism
#> 13:      A                       Interdisciplinary Studies
#> 14:      A                      Social Sciences: Sociology
#> 15:     A-                Language and Literature: Foreign
#> 16:      A                      Social Sciences: Sociology
#> 17:     B+              Public Administration: Social Work
#> 18:      A              Public Administration: Social Work
#> 19:      A              Public Administration: Social Work
#> 20:     A-                      Social Sciences: Sociology
#> 21:     B+                                      Psychology
#> 22:      A                                      Psychology
#> 23:      A                                      Psychology
#> 24:      C                                      Statistics
#> 25:      A             Cooperative Education or Internship
#> 26:      B                                      Psychology
#> 27:      A                                      Psychology
#> 28:      A                                      Psychology
#> 29:      A                      Social Sciences: Sociology
#> 30:      A                      Social Sciences: Sociology
#> 31:      A               Health Professions: Basic Medical
#> 32:      B               Health Professions: Basic Medical
#> 33:      A                                      Psychology
#> 34:      A                                      Psychology
#> 35:      A                                      Psychology
#> 36:      A                      Social Sciences: Sociology
#> 37:      A                                      Psychology
#> 38:      A                                      Psychology
#> 39:     A+                      Social Sciences: Sociology
#> 40:      A                      Social Sciences: Sociology
#> 41:      A                      Social Sciences: Sociology
#> 42:     A+                            Area Studies: Ethnic
#> 43:      A                  Area Studies: Women and Gender
#> 44:      A                       Interdisciplinary Studies
#> 45:     A+                                      Psychology
#> 46:      A                                      Psychology
#> 47:     A+                                      Psychology
#>      grade                             discipline_midfield
#>     <char>                                          <char>
```

If we omit several columns and rename others, we obtain a more readable
output.

``` r

# columns to keep
cols_we_want <- c("term_course", "course", "abbrev", "number", "hours_course", "grade")

# subset
DT <- course[mcid == id_we_want, ..cols_we_want]

# order rows
DT <- DT[order(term_course, number)]

# merge course abbreviation and number, shorten some column names
DT <- DT[, .(term = term_course, course, number = paste0(abbrev, "-", number), cr_hr = hours_course, grade)]

# display
DT
#>       term                         course   number cr_hr  grade
#>     <char>                         <char>   <char> <num> <char>
#>  1:  20051       Humans and Other Animals BZCC-101     3      B
#>  2:  20051      Moral and Social Problems PLCC-103     3      A
#>  3:  20051            Health and Wellness EXCC-145     3      A
#>  4:  20051            College Composition COCC-150     3      A
#>  5:  20051 Key Academic Community Seminar   KA-192     3      A
#>  6:  20053  Individual&Family Development HDCC-101     3      B
#>  7:  20053           First-Year Spanish I    L-105     5     A-
#>  8:  20053 Africn-Americn Hist Since 1865 ETCC-251     3     B+
#>  9:  20061   Basic Concepts of Plant Life BZCC-104     3      B
#> 10:  20061  Basic Concepts-Plant Life Lab BZCC-105     1      A
#> 11:  20061                    Advertising   JT-250     3     B-
#> 12:  20061  Chicana/o History and Culture ETCC-253     3     C+
#> 13:  20061 Introductn to Criminal Justice    S-253     3      A
#> 14:  20061    Ldrshp in Higher Ed Environ   IU-272     3      A
#> 15:  20063          First-Year Spanish II    L-107     5     A-
#> 16:  20063 Contemporary Sociolgicl Theory    S-302     3      A
#> 17:  20071    Introduction to Social Work SOWK-150     3     B+
#> 18:  20071  Human Behavior Social Environ SOWK-233     3      A
#> 19:  20071 Practicum-Communication Skills SOWK-286     3      A
#> 20:  20071 Methds of Sociological Inquiry  SOC-311     3     A-
#> 21:  20073      Psychology of Differences  PSY-210     3     B+
#> 22:  20073  Research Methds in Psychology  PSY-250     4      A
#> 23:  20073 Introductn-Statistical Methods STAT-301     3      C
#> 24:  20073              Social Psychology  PSY-315     3      A
#> 25:  20081              Writing Arguments   CO-300     3      A
#> 26:  20081  Computer Methods in Sociology  SOC-313     1      A
#> 27:  20081      Organizational Psychology  PSY-340     3      B
#> 28:  20081  Organizational Psychology Lab  PSY-341     1      A
#> 29:  20081  History&Systems of Psychology  PSY-401     3      A
#> 30:  20081          Sociology of Disaster  SOC-463     3      A
#> 31:  20083 Concepts-Human Anat&Physiology  BMS-200     1      A
#> 32:  20083      Mind, Brain, and Behavior  PSY-252     3      A
#> 33:  20083 Principles of Human Physiology  BMS-300     4      B
#> 34:  20083           Symbolic Interaction  SOC-371     3      A
#> 35:  20083       Sensation and Perception  PSY-456     3      A
#> 36:  20083   Sensation and Perception Lab  PSY-457     2      A
#> 37:  20091  Psychology of Human Sexuality  PSY-228     3      A
#> 38:  20091            Abnormal Psychology  PSY-320     3      A
#> 39:  20091          Social Stratification  SOC-330     3     A+
#> 40:  20091                     Internship  SOC-487     3      A
#> 41:  20091                        Seminar  SOC-492     1      A
#> 42:  20093 Introduction to Ethnic Studies ETST-100     3     A+
#> 43:  20093            Health and the Mind  PSY-121     1     A+
#> 44:  20093          Leadership for Greeks   IU-273     2      A
#> 45:  20093   Social Psychology Laboratory  PSY-317     2      A
#> 46:  20093              Independent Study   WS-495     1      A
#> 47:  20093                    Group Study  PSY-496     3     A+
#>       term                         course   number cr_hr  grade
#>     <char>                         <char>   <char> <num> <char>
```

*Term.*   Here, the records span 10 rows, one row per term. Again, we
can do some editing to improve readability, assuming these are variables
we might need in an analysis.

``` r

# columns to keep
cols_we_want <- c("term", "cip6", "level", "hours_term", "gpa_term", "gpa_cumul")

# subset the data
DT <- term[mcid == id_we_want, ..cols_we_want]

# order rows
DT <- DT[order(term)]

# display
DT
#>       term   cip6              level hours_term gpa_term gpa_cumul
#>     <char> <char>             <char>      <num>    <num>     <num>
#>  1:  20051 451101      01 First-year         15     3.80      3.80
#>  2:  20053 190701      01 First-year         11     3.40      3.63
#>  3:  20061 451101     02 Second-year         16     3.25      3.49
#>  4:  20063 451101     02 Second-year          8     3.81      3.54
#>  5:  20071 451101      03 Third-year         12     3.75      3.58
#>  6:  20073 451101      03 Third-year         13     3.38      3.54
#>  7:  20081 451101      03 Third-year         14     3.79      3.58
#>  8:  20083 451101     04 Fourth-year         16     3.75      3.61
#>  9:  20091 451101     04 Fourth-year         13     4.00      3.65
#> 10:  20093 451101 05 Fifth-year Plus         12     4.00      3.68
```

*Degree.*   In this example, the records span 2 rows, one row per
degree. The degrees were earned in the same term, Spring 2009.

``` r

# Observations for a selected ID, showing selected columns
DT <- degree[mcid == id_we_want, .(term_degree, cip6, degree)]

# display
DT
#>    term_degree   cip6                            degree
#>         <char> <char>                            <char>
#> 1:       20093 420101 Bachelor of Science in Psychology
#> 2:       20093 451101     Bachelor of Arts in Sociology
```

## Student 2: Degree in biological sciences

``` r

# One student
id_we_want <- "MCID3111315508"
```

*Degree.*   In this example, a student has earned two degrees at
separate times. Usually we are interested in student records up to the
time of their first degree, ignoring subsequent degrees (unless those
degrees are relevant to one’s study).

``` r

# Observations for a selected ID, showing selected columns
DT <- degree[mcid == id_we_want, .(term_degree, cip6, degree)]

# display
DT
#>    term_degree   cip6                                     degree
#>         <char> <char>                                     <char>
#> 1:       19961 260101 Bachelor of Science in Biological Sciences
#> 2:       19994 260701      Bachelor of Science in Animal Biology
```

Thus, when extracting course and term information, we filter for terms
no later than the first degree term—in this case, term 19961.

``` r

# extract the term of the first degree
first_degree_term <- degree[mcid == id_we_want, min(term_degree)]

# display
first_degree_term
#> [1] "19961"
```

*student.*   As expected, yields one row.

``` r

# Observations for a selected ID
DT <- student[mcid == id_we_want]

# display
DT
#>              mcid   institution              transfer hours_transfer
#>            <char>        <char>                <char>          <num>
#> 1: MCID3111315508 Institution C First-Time in College             NA
#>             race    sex age_desc us_citizen home_zip high_school sat_math
#>           <char> <char>   <char>     <char>   <char>      <char>    <num>
#> 1: Other/Unknown   Male Under 25        Yes    80521        <NA>      610
#>    sat_verbal act_comp
#>         <num>    <num>
#> 1:        490       NA
```

*course.*   For this student, the records show 52 courses (one row per
course) leading up to their first degree.

``` r

# columns to keep
cols_we_want <- c("term_course", "course", "abbrev", "number", "hours_course", "grade")

# subset
DT <- course[mcid == id_we_want, ..cols_we_want]

# retain terms leading up to the first degree
DT <- DT[term_course <= first_degree_term]

# order rows
DT <- DT[order(term_course, number)]

# merge course abbreviation and number, shorten some column names
DT <- DT[, .(term = term_course, course, number = paste0(abbrev, "-", number), cr_hr = hours_course, grade)]

# display
DT
#>       term                         course number cr_hr  grade
#>     <char>                         <char> <char> <num> <char>
#>  1:  19911              College Algebra I  M-120     1    S/P
#>  2:  19911     Environmental Conservation NR-120     3      B
#>  3:  19911 Geologic Environment & Society ER-130     3      C
#>  4:  19911           U.S. History to 1876 HY-150     3      B
#>  5:  19911          Second-Year Spanish I  L-200     3      C
#>  6:  19913     Appreciation of Philosophy PL-100     3      A
#>  7:  19913             General Psychology PY-100     3      B
#>  8:  19913   Basic Concepts of Plant Life  B-104     3      B
#>  9:  19913         Second-Year Spanish II  L-201     3      C
#> 10:  19921         Beginning Self-Defense EX-100     1     NG
#> 11:  19921   Attributes of Living Systems BY-102     4      A
#> 12:  19921           Personal Computing I CS-110     4      A
#> 13:  19921            College Composition CO-150     3      A
#> 14:  19921           Third-Year Spanish I  L-300     3      C
#> 15:  19923     Biology of Organisms-Plant BY-103     2      B
#> 16:  19923                   Scuba Diving EX-106     1    S/P
#> 17:  19923            General Chemistry I  C-111     4      B
#> 18:  19923 General Chemistry Laboratory I  C-112     1      B
#> 19:  19923             College Algebra II  M-121     1      A
#> 20:  19923 Logarithmic&Exponential Functn  M-124     1      A
#> 21:  19923            Medical Terminology OT-215     1      A
#> 22:  19923   Intro-Spanish Literary Study  L-310     3      B
#> 23:  19924           General Chemistry II  C-113     3      C
#> 24:  19924 General Chemistry Laboratry II  C-114     1      B
#> 25:  19924         Numerical Trigonometry  M-125     1      A
#> 26:  19924          Analytic Trigonometry  M-126     1      I
#> 27:  19931   Calculus-Biolog Scientists I  M-155     4      D
#> 28:  19931 Princ-Human Anatomy&Physiology PS-300     4      A
#> 29:  19931          Third-Year Spanish II  L-301     3      C
#> 30:  19931            Organic Chemistry I  C-341     3      F
#> 31:  19933              Intermediate Golf EX-101     1     NG
#> 32:  19933   Calculus-Biolog Scientists I  M-155     4      B
#> 33:  19933            Human Gross Anatomy AY-301     5     NG
#> 34:  19933 Intro-Spansh-Americn Civiliztn  L-336     3      A
#> 35:  19933            Organic Chemistry I  C-341     3      D
#> 36:  19934            Human Gross Anatomy AY-301     5      B
#> 37:  19934 Introductn-Statistical Methods ST-301     3      C
#> 38:  19941                        Ecology BY-220     3      A
#> 39:  19941                   Cell Biology BY-310     4      C
#> 40:  19941         Evolution and Heredity  Z-346     3      C
#> 41:  19941         Comparative Physiology  Z-401     3      A
#> 42:  19943      Beginning Weight Training EX-100     1      A
#> 43:  19943              General Physics I PH-121     5      A
#> 44:  19943 Organic & Biological Chemistry  C-245     4      C
#> 45:  19943          Developmental Biology BY-311     4      D
#> 46:  19943              Spanish Phonetics  L-426     3      B
#> 47:  19944                  Field Biology  Z-477     5      A
#> 48:  19951  Organic & Biological Chem Lab  C-246     1      B
#> 49:  19951         Principles of Genetics SC-330     3      C
#> 50:  19951        Functional Neuroanatomy AY-345     4     NG
#> 51:  19951     Principles of Biochemistry BC-351     4      C
#> 52:  19951 Principles of Biochemistry Lab BC-352     1      C
#>       term                         course number cr_hr  grade
#>     <char>                         <char> <char> <num> <char>
```

*Term.*   Here, the records show 12 terms (one row per term) leading up
to their first degree.

``` r

# columns to keep
cols_we_want <- c("term", "cip6", "level", "hours_term", "gpa_term", "gpa_cumul")

# subset the data
DT <- term[mcid == id_we_want, ..cols_we_want]

# retain terms leading up to the first degree
DT <- DT[term <= first_degree_term]

# order rows
DT <- DT[order(term)]

# display
DT
#>       term   cip6              level hours_term gpa_term gpa_cumul
#>     <char> <char>             <char>      <num>    <num>     <num>
#>  1:  19911 240102      01 First-year         12     2.50      2.50
#>  2:  19913 240102      01 First-year         12     3.00      2.75
#>  3:  19921 240102     02 Second-year         14     3.57      3.05
#>  4:  19923 240102     02 Second-year         13     3.23      3.10
#>  5:  19924 260101     02 Second-year          5     2.60      3.05
#>  6:  19931 260101      03 Third-year         11     2.36      2.94
#>  7:  19933 260101      03 Third-year         10     2.70      2.91
#>  8:  19934 260101      03 Third-year          8     2.62      2.88
#>  9:  19941 260101     04 Fourth-year         13     2.92      2.89
#> 10:  19943 260101     04 Fourth-year         17     2.65      2.85
#> 11:  19944 260101 05 Fifth-year Plus          5     4.00      2.90
#> 12:  19951 260101 05 Fifth-year Plus          9     2.11      2.84
```

## Wrap-up

``` r

# Reset data.table print option
options(datatable.print.nrows = 10)
```

## References
