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
#>              mcid   race    sex   institution              transfer
#>            <char> <char> <char>        <char>                <char>
#> 1: MCID3112192438  White Female Institution C First-Time in College
#>    hours_transfer age_desc us_citizen home_zip high_school sat_math sat_verbal
#>             <num>   <char>     <char>   <char>      <char>    <num>      <num>
#> 1:             NA Under 25        Yes    80521        <NA>      580        390
#>    act_comp
#>       <num>
#> 1:       27
```

*course.*   For this student, the course records span 47 rows, one row
per course.

``` r

# Observations for a selected ID
DT <- course[mcid == id_we_want]

# display
DT
#>               mcid term_course abbrev number   institution
#>             <char>      <char> <char> <char>        <char>
#>  1: MCID3112192438       20051     KA    192 Institution C
#>  2: MCID3112192438       20051   BZCC    101 Institution C
#>  3: MCID3112192438       20051   EXCC    145 Institution C
#>  4: MCID3112192438       20051   COCC    150 Institution C
#>  5: MCID3112192438       20051   PLCC    103 Institution C
#>  6: MCID3112192438       20053   ETCC    251 Institution C
#>  7: MCID3112192438       20053   HDCC    101 Institution C
#>  8: MCID3112192438       20053      L    105 Institution C
#>  9: MCID3112192438       20061   ETCC    253 Institution C
#> 10: MCID3112192438       20061   BZCC    104 Institution C
#> 11: MCID3112192438       20061   BZCC    105 Institution C
#> 12: MCID3112192438       20061     JT    250 Institution C
#> 13: MCID3112192438       20061     IU    272 Institution C
#> 14: MCID3112192438       20061      S    253 Institution C
#> 15: MCID3112192438       20063      L    107 Institution C
#> 16: MCID3112192438       20063      S    302 Institution C
#> 17: MCID3112192438       20071   SOWK    150 Institution C
#> 18: MCID3112192438       20071   SOWK    233 Institution C
#> 19: MCID3112192438       20071   SOWK    286 Institution C
#> 20: MCID3112192438       20071    SOC    311 Institution C
#> 21: MCID3112192438       20073    PSY    210 Institution C
#> 22: MCID3112192438       20073    PSY    250 Institution C
#> 23: MCID3112192438       20073    PSY    315 Institution C
#> 24: MCID3112192438       20073   STAT    301 Institution C
#> 25: MCID3112192438       20081     CO    300 Institution C
#> 26: MCID3112192438       20081    PSY    340 Institution C
#> 27: MCID3112192438       20081    PSY    341 Institution C
#> 28: MCID3112192438       20081    PSY    401 Institution C
#> 29: MCID3112192438       20081    SOC    313 Institution C
#> 30: MCID3112192438       20081    SOC    463 Institution C
#> 31: MCID3112192438       20083    BMS    200 Institution C
#> 32: MCID3112192438       20083    BMS    300 Institution C
#> 33: MCID3112192438       20083    PSY    252 Institution C
#> 34: MCID3112192438       20083    PSY    456 Institution C
#> 35: MCID3112192438       20083    PSY    457 Institution C
#> 36: MCID3112192438       20083    SOC    371 Institution C
#> 37: MCID3112192438       20091    PSY    228 Institution C
#> 38: MCID3112192438       20091    PSY    320 Institution C
#> 39: MCID3112192438       20091    SOC    330 Institution C
#> 40: MCID3112192438       20091    SOC    487 Institution C
#> 41: MCID3112192438       20091    SOC    492 Institution C
#> 42: MCID3112192438       20093   ETST    100 Institution C
#> 43: MCID3112192438       20093     WS    495 Institution C
#> 44: MCID3112192438       20093     IU    273 Institution C
#> 45: MCID3112192438       20093    PSY    121 Institution C
#> 46: MCID3112192438       20093    PSY    317 Institution C
#> 47: MCID3112192438       20093    PSY    496 Institution C
#>               mcid term_course abbrev number   institution
#>             <char>      <char> <char> <char>        <char>
#>                             course section         type
#>                             <char>  <char>       <char>
#>  1: Key Academic Community Seminar     009         <NA>
#>  2:       Humans and Other Animals     002         <NA>
#>  3:            Health and Wellness     004         <NA>
#>  4:            College Composition     120         <NA>
#>  5:      Moral and Social Problems     033         <NA>
#>  6: Africn-Americn Hist Since 1865     001         <NA>
#>  7:  Individual&Family Development     003         <NA>
#>  8:           First-Year Spanish I     001         <NA>
#>  9:  Chicana/o History and Culture     001         <NA>
#> 10:   Basic Concepts of Plant Life     001         <NA>
#> 11:  Basic Concepts-Plant Life Lab     L02         <NA>
#> 12:                    Advertising     001         <NA>
#> 13:    Ldrshp in Higher Ed Environ     001         <NA>
#> 14: Introductn to Criminal Justice     001         <NA>
#> 15:          First-Year Spanish II     001         <NA>
#> 16: Contemporary Sociolgicl Theory     001         <NA>
#> 17:    Introduction to Social Work     001 Face-to-Face
#> 18:  Human Behavior Social Environ     001 Face-to-Face
#> 19: Practicum-Communication Skills     L01 Face-to-Face
#> 20: Methds of Sociological Inquiry     001 Face-to-Face
#> 21:      Psychology of Differences     001 Face-to-Face
#> 22:  Research Methds in Psychology     001 Face-to-Face
#> 23:              Social Psychology     001 Face-to-Face
#> 24: Introductn-Statistical Methods     002 Face-to-Face
#> 25:              Writing Arguments     025 Face-to-Face
#> 26:      Organizational Psychology     001 Face-to-Face
#> 27:  Organizational Psychology Lab     L01 Face-to-Face
#> 28:  History&Systems of Psychology     001 Face-to-Face
#> 29:  Computer Methods in Sociology     001 Face-to-Face
#> 30:          Sociology of Disaster     001 Face-to-Face
#> 31: Concepts-Human Anat&Physiology     006 Face-to-Face
#> 32: Principles of Human Physiology     001 Face-to-Face
#> 33:      Mind, Brain, and Behavior     002 Face-to-Face
#> 34:       Sensation and Perception     001 Face-to-Face
#> 35:   Sensation and Perception Lab     L02 Face-to-Face
#> 36:           Symbolic Interaction     001 Face-to-Face
#> 37:  Psychology of Human Sexuality     001 Face-to-Face
#> 38:            Abnormal Psychology     001 Face-to-Face
#> 39:          Social Stratification     001 Face-to-Face
#> 40:                     Internship     L01 Face-to-Face
#> 41:                        Seminar     001 Face-to-Face
#> 42: Introduction to Ethnic Studies     003 Face-to-Face
#> 43:              Independent Study     002 Face-to-Face
#> 44:          Leadership for Greeks     001 Face-to-Face
#> 45:            Health and the Mind     001 Face-to-Face
#> 46:   Social Psychology Laboratory     L02 Face-to-Face
#> 47:                    Group Study     004 Face-to-Face
#>                             course section         type
#>                             <char>  <char>       <char>
#>                  faculty_rank hours_course  grade
#>                        <char>        <num> <char>
#>  1:                Instructor            3      A
#>  2:       Assistant Professor            3      B
#>  3: Non-Academic Professional            3      A
#>  4:                Instructor            3      A
#>  5:                Instructor            3      A
#>  6:                Instructor            3     B+
#>  7:        Graduate Assistant            3      B
#>  8:        Graduate Assistant            5     A-
#>  9:       Assistant Professor            3     C+
#> 10:        Graduate Assistant            3      B
#> 11:        Graduate Assistant            1      A
#> 12:       Associate Professor            3     B-
#> 13:     Academic Professional            3      A
#> 14:                Instructor            3      A
#> 15:                Instructor            5     A-
#> 16:       Assistant Professor            3      A
#> 17:                Instructor            3     B+
#> 18:       Assistant Professor            3      A
#> 19:     Academic Professional            3      A
#> 20:       Assistant Professor            3     A-
#> 21:        Graduate Assistant            3     B+
#> 22:          Research Faculty            4      A
#> 23:        Graduate Assistant            3      A
#> 24:        Graduate Assistant            3      C
#> 25:                Instructor            3      A
#> 26:       Associate Professor            3      B
#> 27:        Graduate Assistant            1      A
#> 28:       Assistant Professor            3      A
#> 29:                Instructor            1      A
#> 30:       Assistant Professor            3      A
#> 31:        Graduate Assistant            1      A
#> 32:       Associate Professor            4      B
#> 33:        Graduate Assistant            3      A
#> 34:       Assistant Professor            3      A
#> 35:        Graduate Assistant            2      A
#> 36:       Assistant Professor            3      A
#> 37:       Assistant Professor            3      A
#> 38:                 Professor            3      A
#> 39:       Assistant Professor            3     A+
#> 40:        Graduate Assistant            3      A
#> 41:        Graduate Assistant            1      A
#> 42:                Instructor            3     A+
#> 43:     Academic Professional            1      A
#> 44:        Graduate Assistant            2      A
#> 45: Non-Academic Professional            1     A+
#> 46:        Graduate Assistant            2      A
#> 47:                Instructor            3     A+
#>                  faculty_rank hours_course  grade
#>                        <char>        <num> <char>
#>                                 discipline_midfield
#>                                              <char>
#>  1:                                Academic Support
#>  2:      Biological and Biomedical Sciences: Botany
#>  3:                Education: Physical and Coaching
#>  4:                Language and Literature: English
#>  5:                                      Philosophy
#>  6:                            Area Studies: Ethnic
#>  7: Family and Consumer Sciences: Human Development
#>  8:                Language and Literature: Foreign
#>  9:                            Area Studies: Ethnic
#> 10:      Biological and Biomedical Sciences: Botany
#> 11:      Biological and Biomedical Sciences: Botany
#> 12:        Communication and Journalism: Journalism
#> 13:                       Interdisciplinary Studies
#> 14:                      Social Sciences: Sociology
#> 15:                Language and Literature: Foreign
#> 16:                      Social Sciences: Sociology
#> 17:              Public Administration: Social Work
#> 18:              Public Administration: Social Work
#> 19:              Public Administration: Social Work
#> 20:                      Social Sciences: Sociology
#> 21:                                      Psychology
#> 22:                                      Psychology
#> 23:                                      Psychology
#> 24:                                      Statistics
#> 25:             Cooperative Education or Internship
#> 26:                                      Psychology
#> 27:                                      Psychology
#> 28:                                      Psychology
#> 29:                      Social Sciences: Sociology
#> 30:                      Social Sciences: Sociology
#> 31:               Health Professions: Basic Medical
#> 32:               Health Professions: Basic Medical
#> 33:                                      Psychology
#> 34:                                      Psychology
#> 35:                                      Psychology
#> 36:                      Social Sciences: Sociology
#> 37:                                      Psychology
#> 38:                                      Psychology
#> 39:                      Social Sciences: Sociology
#> 40:                      Social Sciences: Sociology
#> 41:                      Social Sciences: Sociology
#> 42:                            Area Studies: Ethnic
#> 43:                  Area Studies: Women and Gender
#> 44:                       Interdisciplinary Studies
#> 45:                                      Psychology
#> 46:                                      Psychology
#> 47:                                      Psychology
#>                                 discipline_midfield
#>                                              <char>
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
#>              mcid          race    sex   institution              transfer
#>            <char>        <char> <char>        <char>                <char>
#> 1: MCID3111315508 Other/Unknown   Male Institution C First-Time in College
#>    hours_transfer age_desc us_citizen home_zip high_school sat_math sat_verbal
#>             <num>   <char>     <char>   <char>      <char>    <num>      <num>
#> 1:             NA Under 25        Yes    80521        <NA>      610        490
#>    act_comp
#>       <num>
#> 1:       NA
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
