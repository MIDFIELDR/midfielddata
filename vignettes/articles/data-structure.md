# Data structure


In this article, we examine the general structure and identify the
primary and composite keys for the four data tables: `student`,
`course`, `term`, and `degree`.

## Load data

*Start.*   If you are writing your own script to follow along, we use
these packages in this article:

``` r
library(wrapr)
library(midfielddata)
library(data.table)
```

*Load data tables.*   Data tables can be loaded individually or
collectively as needed. View data dictionaries via `?student`,
`?course`, `?term`, or `?degree`.

``` r
# Load one table as needed
data(student)

# Or load multiple tables
data(course, term, degree)
```

## `student`

Data table with 13 variables and 97,555 rows. The variables are listed
in Table 1.

<div id="zeqahthxer" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#zeqahthxer table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
&#10;#zeqahthxer thead, #zeqahthxer tbody, #zeqahthxer tfoot, #zeqahthxer tr, #zeqahthxer td, #zeqahthxer th {
  border-style: none;
}
&#10;#zeqahthxer p {
  margin: 0;
  padding: 0;
}
&#10;#zeqahthxer .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: small;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #000000;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #000000;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}
&#10;#zeqahthxer .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}
&#10;#zeqahthxer .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}
&#10;#zeqahthxer .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}
&#10;#zeqahthxer .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#zeqahthxer .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #5F5F5F;
}
&#10;#zeqahthxer .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #5F5F5F;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #5F5F5F;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#zeqahthxer .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}
&#10;#zeqahthxer .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}
&#10;#zeqahthxer .gt_column_spanner_outer:first-child {
  padding-left: 0;
}
&#10;#zeqahthxer .gt_column_spanner_outer:last-child {
  padding-right: 0;
}
&#10;#zeqahthxer .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #5F5F5F;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}
&#10;#zeqahthxer .gt_spanner_row {
  border-bottom-style: hidden;
}
&#10;#zeqahthxer .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #5F5F5F;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #5F5F5F;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}
&#10;#zeqahthxer .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #5F5F5F;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #5F5F5F;
  vertical-align: middle;
}
&#10;#zeqahthxer .gt_from_md > :first-child {
  margin-top: 0;
}
&#10;#zeqahthxer .gt_from_md > :last-child {
  margin-bottom: 0;
}
&#10;#zeqahthxer .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: none;
  border-top-width: 1px;
  border-top-color: #D5D5D5;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D5D5D5;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D5D5D5;
  vertical-align: middle;
  overflow-x: hidden;
}
&#10;#zeqahthxer .gt_stub {
  color: #FFFFFF;
  background-color: #5F5F5F;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #5F5F5F;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#zeqahthxer .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}
&#10;#zeqahthxer .gt_row_group_first td {
  border-top-width: 2px;
}
&#10;#zeqahthxer .gt_row_group_first th {
  border-top-width: 2px;
}
&#10;#zeqahthxer .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#zeqahthxer .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #5F5F5F;
}
&#10;#zeqahthxer .gt_first_summary_row.thick {
  border-top-width: 2px;
}
&#10;#zeqahthxer .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #5F5F5F;
}
&#10;#zeqahthxer .gt_grand_summary_row {
  color: #333333;
  background-color: #D5D5D5;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#zeqahthxer .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #5F5F5F;
}
&#10;#zeqahthxer .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #5F5F5F;
}
&#10;#zeqahthxer .gt_striped {
  background-color: #F4F4F4;
}
&#10;#zeqahthxer .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #5F5F5F;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #5F5F5F;
}
&#10;#zeqahthxer .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#zeqahthxer .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#zeqahthxer .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#zeqahthxer .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#zeqahthxer .gt_left {
  text-align: left;
}
&#10;#zeqahthxer .gt_center {
  text-align: center;
}
&#10;#zeqahthxer .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}
&#10;#zeqahthxer .gt_font_normal {
  font-weight: normal;
}
&#10;#zeqahthxer .gt_font_bold {
  font-weight: bold;
}
&#10;#zeqahthxer .gt_font_italic {
  font-style: italic;
}
&#10;#zeqahthxer .gt_super {
  font-size: 65%;
}
&#10;#zeqahthxer .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}
&#10;#zeqahthxer .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}
&#10;#zeqahthxer .gt_indent_1 {
  text-indent: 5px;
}
&#10;#zeqahthxer .gt_indent_2 {
  text-indent: 10px;
}
&#10;#zeqahthxer .gt_indent_3 {
  text-indent: 15px;
}
&#10;#zeqahthxer .gt_indent_4 {
  text-indent: 20px;
}
&#10;#zeqahthxer .gt_indent_5 {
  text-indent: 25px;
}
&#10;#zeqahthxer .katex-display {
  display: inline-flex !important;
  margin-bottom: 0.75em !important;
}
&#10;#zeqahthxer div.Reactable > div.rt-table > div.rt-thead > div.rt-tr.rt-tr-group-header > div.rt-th-group:after {
  height: 0px !important;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <caption>Table 1: Variables in student</caption>
  <thead>
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" style="background-color: #C7EAE5;" scope="col" id="variable">variable</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" style="background-color: #C7EAE5;" scope="col" id="class">class</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="variable" class="gt_row gt_left">mcid</td>
<td headers="class" class="gt_row gt_left">character</td></tr>
    <tr><td headers="variable" class="gt_row gt_left gt_striped">institution</td>
<td headers="class" class="gt_row gt_left gt_striped">character</td></tr>
    <tr><td headers="variable" class="gt_row gt_left">transfer</td>
<td headers="class" class="gt_row gt_left">character</td></tr>
    <tr><td headers="variable" class="gt_row gt_left gt_striped">hours_transfer</td>
<td headers="class" class="gt_row gt_left gt_striped">numeric</td></tr>
    <tr><td headers="variable" class="gt_row gt_left">race</td>
<td headers="class" class="gt_row gt_left">character</td></tr>
    <tr><td headers="variable" class="gt_row gt_left gt_striped">sex</td>
<td headers="class" class="gt_row gt_left gt_striped">character</td></tr>
    <tr><td headers="variable" class="gt_row gt_left">age_desc</td>
<td headers="class" class="gt_row gt_left">character</td></tr>
    <tr><td headers="variable" class="gt_row gt_left gt_striped">us_citizen</td>
<td headers="class" class="gt_row gt_left gt_striped">character</td></tr>
    <tr><td headers="variable" class="gt_row gt_left">home_zip</td>
<td headers="class" class="gt_row gt_left">character</td></tr>
    <tr><td headers="variable" class="gt_row gt_left gt_striped">high_school</td>
<td headers="class" class="gt_row gt_left gt_striped">character</td></tr>
    <tr><td headers="variable" class="gt_row gt_left">sat_math</td>
<td headers="class" class="gt_row gt_left">numeric</td></tr>
    <tr><td headers="variable" class="gt_row gt_left gt_striped">sat_verbal</td>
<td headers="class" class="gt_row gt_left gt_striped">numeric</td></tr>
    <tr><td headers="variable" class="gt_row gt_left">act_comp</td>
<td headers="class" class="gt_row gt_left">numeric</td></tr>
  </tbody>
  &#10;</table>
</div>

The primary key is the student ID variable, `mcid`. We can use a
function from the wrapr package to check that this column provides a
unique key and verify that the number of NA values in the key column is
zero.

``` r
# Check that the indicated column forms a primary key
DT <- copy(student)
key_col_names <- c("mcid")
wrapr::checkColsFormUniqueKeys(DT, key_col_names)
#> [1] TRUE

# Primary key variable should have no missing values
sum(is.na(student$mcid))
#> [1] 0
```

Rows contain one observation per student.

``` r
# First few rows and last few rows
student
#>                  mcid   institution              transfer hours_transfer
#>                <char>        <char>                <char>          <num>
#>     1: MCID3111142225 Institution B   First-Time Transfer             NA
#>     2: MCID3111142283 Institution J   First-Time Transfer             NA
#>     3: MCID3111142290 Institution J   First-Time Transfer             NA
#>    ---                                                                  
#> 97553: MCID3112898894 Institution B First-Time in College             NA
#> 97554: MCID3112898895 Institution B First-Time in College             NA
#> 97555: MCID3112898940 Institution B First-Time in College             NA
#>                 race    sex age_desc us_citizen home_zip high_school sat_math
#>               <char> <char>   <char>     <char>   <char>      <char>    <num>
#>     1:         Asian   Male Under 25        Yes     <NA>        <NA>       NA
#>     2:         Asian Female Under 25        Yes    22020        <NA>      560
#>     3:         Asian   Male Under 25        Yes    23233      471872      510
#>    ---                                                                       
#> 97553:         White Female Under 25        Yes    53716      501160      510
#> 97554:         White Female Under 25        Yes    53029      500853      420
#> 97555: Other/Unknown   Male Under 25        Yes    20016      090073      470
#>        sat_verbal act_comp
#>             <num>    <num>
#>     1:         NA       NA
#>     2:        230       NA
#>     3:        380       NA
#>    ---                    
#> 97553:        590       24
#> 97554:        590       32
#> 97555:        540       32
```

Student IDs and institution names have been anonymized to remove
identifiable information.

``` r
# Anonymized IDs
sample(student$mcid, 8)
#> [1] "MCID3112319727" "MCID3111580355" "MCID3111873533" "MCID3111806084"
#> [5] "MCID3112355966" "MCID3111875091" "MCID3112799421" "MCID3112412946"

# Anonymized institutions
sort(unique(student$institution))
#> [1] "Institution B" "Institution C" "Institution J"
```

Race/ethnicity and sex are often used as grouping variables.

``` r
# Possible values
sort(unique(student$race))
#> [1] "Asian"           "Black"           "Hispanic"        "International"  
#> [5] "Native American" "Other/Unknown"   "White"

# Possible values
sort(unique(student$sex))
#> [1] "Female"  "Male"    "Unknown"
```

Counts in each category.

``` r
# N by institution
student[order(institution), .N, by = "institution"]
#>      institution     N
#>           <char> <int>
#> 1: Institution B 45660
#> 2: Institution C 26712
#> 3: Institution J 25183

# N by race
student[order(race), .N, by = "race"]
#>               race     N
#>             <char> <int>
#> 1:           Asian  4193
#> 2:           Black  1860
#> 3:        Hispanic  5386
#> 4:   International  7354
#> 5: Native American   403
#> 6:   Other/Unknown  4509
#> 7:           White 73850

# N by sex
student[order(sex), .N, by = "sex"]
#>        sex     N
#>     <char> <int>
#> 1:  Female 46403
#> 2:    Male 51151
#> 3: Unknown     1
```

## `course`

Data table with 12 variables and 3,289,532 rows. The variables are
listed in Table 2.

<div id="nptaeehvyn" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#nptaeehvyn table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
&#10;#nptaeehvyn thead, #nptaeehvyn tbody, #nptaeehvyn tfoot, #nptaeehvyn tr, #nptaeehvyn td, #nptaeehvyn th {
  border-style: none;
}
&#10;#nptaeehvyn p {
  margin: 0;
  padding: 0;
}
&#10;#nptaeehvyn .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: small;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #000000;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #000000;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}
&#10;#nptaeehvyn .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}
&#10;#nptaeehvyn .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}
&#10;#nptaeehvyn .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}
&#10;#nptaeehvyn .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#nptaeehvyn .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #5F5F5F;
}
&#10;#nptaeehvyn .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #5F5F5F;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #5F5F5F;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#nptaeehvyn .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}
&#10;#nptaeehvyn .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}
&#10;#nptaeehvyn .gt_column_spanner_outer:first-child {
  padding-left: 0;
}
&#10;#nptaeehvyn .gt_column_spanner_outer:last-child {
  padding-right: 0;
}
&#10;#nptaeehvyn .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #5F5F5F;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}
&#10;#nptaeehvyn .gt_spanner_row {
  border-bottom-style: hidden;
}
&#10;#nptaeehvyn .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #5F5F5F;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #5F5F5F;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}
&#10;#nptaeehvyn .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #5F5F5F;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #5F5F5F;
  vertical-align: middle;
}
&#10;#nptaeehvyn .gt_from_md > :first-child {
  margin-top: 0;
}
&#10;#nptaeehvyn .gt_from_md > :last-child {
  margin-bottom: 0;
}
&#10;#nptaeehvyn .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: none;
  border-top-width: 1px;
  border-top-color: #D5D5D5;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D5D5D5;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D5D5D5;
  vertical-align: middle;
  overflow-x: hidden;
}
&#10;#nptaeehvyn .gt_stub {
  color: #FFFFFF;
  background-color: #5F5F5F;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #5F5F5F;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#nptaeehvyn .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}
&#10;#nptaeehvyn .gt_row_group_first td {
  border-top-width: 2px;
}
&#10;#nptaeehvyn .gt_row_group_first th {
  border-top-width: 2px;
}
&#10;#nptaeehvyn .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#nptaeehvyn .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #5F5F5F;
}
&#10;#nptaeehvyn .gt_first_summary_row.thick {
  border-top-width: 2px;
}
&#10;#nptaeehvyn .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #5F5F5F;
}
&#10;#nptaeehvyn .gt_grand_summary_row {
  color: #333333;
  background-color: #D5D5D5;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#nptaeehvyn .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #5F5F5F;
}
&#10;#nptaeehvyn .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #5F5F5F;
}
&#10;#nptaeehvyn .gt_striped {
  background-color: #F4F4F4;
}
&#10;#nptaeehvyn .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #5F5F5F;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #5F5F5F;
}
&#10;#nptaeehvyn .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#nptaeehvyn .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#nptaeehvyn .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#nptaeehvyn .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#nptaeehvyn .gt_left {
  text-align: left;
}
&#10;#nptaeehvyn .gt_center {
  text-align: center;
}
&#10;#nptaeehvyn .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}
&#10;#nptaeehvyn .gt_font_normal {
  font-weight: normal;
}
&#10;#nptaeehvyn .gt_font_bold {
  font-weight: bold;
}
&#10;#nptaeehvyn .gt_font_italic {
  font-style: italic;
}
&#10;#nptaeehvyn .gt_super {
  font-size: 65%;
}
&#10;#nptaeehvyn .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}
&#10;#nptaeehvyn .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}
&#10;#nptaeehvyn .gt_indent_1 {
  text-indent: 5px;
}
&#10;#nptaeehvyn .gt_indent_2 {
  text-indent: 10px;
}
&#10;#nptaeehvyn .gt_indent_3 {
  text-indent: 15px;
}
&#10;#nptaeehvyn .gt_indent_4 {
  text-indent: 20px;
}
&#10;#nptaeehvyn .gt_indent_5 {
  text-indent: 25px;
}
&#10;#nptaeehvyn .katex-display {
  display: inline-flex !important;
  margin-bottom: 0.75em !important;
}
&#10;#nptaeehvyn div.Reactable > div.rt-table > div.rt-thead > div.rt-tr.rt-tr-group-header > div.rt-th-group:after {
  height: 0px !important;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <caption>Table 2: Variables in course</caption>
  <thead>
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" style="background-color: #C7EAE5;" scope="col" id="variable">variable</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" style="background-color: #C7EAE5;" scope="col" id="class">class</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="variable" class="gt_row gt_left">mcid</td>
<td headers="class" class="gt_row gt_left">character</td></tr>
    <tr><td headers="variable" class="gt_row gt_left gt_striped">institution</td>
<td headers="class" class="gt_row gt_left gt_striped">character</td></tr>
    <tr><td headers="variable" class="gt_row gt_left">term_course</td>
<td headers="class" class="gt_row gt_left">character</td></tr>
    <tr><td headers="variable" class="gt_row gt_left gt_striped">course</td>
<td headers="class" class="gt_row gt_left gt_striped">character</td></tr>
    <tr><td headers="variable" class="gt_row gt_left">abbrev</td>
<td headers="class" class="gt_row gt_left">character</td></tr>
    <tr><td headers="variable" class="gt_row gt_left gt_striped">number</td>
<td headers="class" class="gt_row gt_left gt_striped">character</td></tr>
    <tr><td headers="variable" class="gt_row gt_left">section</td>
<td headers="class" class="gt_row gt_left">character</td></tr>
    <tr><td headers="variable" class="gt_row gt_left gt_striped">type</td>
<td headers="class" class="gt_row gt_left gt_striped">character</td></tr>
    <tr><td headers="variable" class="gt_row gt_left">faculty_rank</td>
<td headers="class" class="gt_row gt_left">character</td></tr>
    <tr><td headers="variable" class="gt_row gt_left gt_striped">hours_course</td>
<td headers="class" class="gt_row gt_left gt_striped">numeric</td></tr>
    <tr><td headers="variable" class="gt_row gt_left">grade</td>
<td headers="class" class="gt_row gt_left">character</td></tr>
    <tr><td headers="variable" class="gt_row gt_left gt_striped">discipline_midfield</td>
<td headers="class" class="gt_row gt_left gt_striped">character</td></tr>
  </tbody>
  &#10;</table>
</div>

The key for the course data is a composite key of four variables:
student ID, term, course abbreviation, and course number.

``` r
# Check that the indicated column forms a primary key
DT <- copy(course)
key_col_names <- c("mcid", "term_course", "abbrev", "number")
wrapr::checkColsFormUniqueKeys(DT, key_col_names)
#> [1] TRUE
 
# Composite key variables should have no missing values
sum(is.na(course$mcid))
#> [1] 0
sum(is.na(course$term_course))
#> [1] 0
sum(is.na(course$abbrev))
#> [1] 0
sum(is.na(course$number))
#> [1] 0
```

Rows contain one observation per student per term per course.

``` r
# First few rows and last few rows
course
#>                    mcid   institution term_course                   course
#>                  <char>        <char>      <char>                   <char>
#>       1: MCID3111142225 Institution B       19881       Microprocessor Lab
#>       2: MCID3111142225 Institution B       19881           Neural Signals
#>       3: MCID3111142225 Institution B       19881      Engineering Economy
#>      ---                                                                  
#> 3289530: MCID3112898940 Institution B       20181     Beginning Japanese 1
#> 3289531: MCID3112898940 Institution B       20181  Precalculus Mathematics
#> 3289532: MCID3112898940 Institution B       20181 Deviance In U S  Society
#>          abbrev number section         type faculty_rank hours_course  grade
#>          <char> <char>  <char>       <char>       <char>        <num> <char>
#>       1:   ECEN   2230     005         <NA>         <NA>            1      C
#>       2:   ECEN   4811     001         <NA>         <NA>            3      C
#>       3:   MCEN   4147     001         <NA>         <NA>            3     B+
#>      ---                                                                    
#> 3289530:   JPNS   1010     009 Face-to-Face     Lecturer            5      C
#> 3289531:   MATH   1150     012 Face-to-Face     Lecturer            4     C-
#> 3289532:   SOCY   1004     100 Face-to-Face   Instructor            3      B
#>                           discipline_midfield
#>                                        <char>
#>       1: Engineering: Electrical and Computer
#>       2: Engineering: Electrical and Computer
#>       3:              Engineering: Mechanical
#>      ---                                     
#> 3289530:    Language and Literature: Japanese
#> 3289531:                          Mathematics
#> 3289532:           Social Sciences: Sociology
```

## `term`

Data table with 13 variables and 639,915 rows. The variables are listed
in Table 3.

<div id="fsrfuhufzz" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#fsrfuhufzz table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
&#10;#fsrfuhufzz thead, #fsrfuhufzz tbody, #fsrfuhufzz tfoot, #fsrfuhufzz tr, #fsrfuhufzz td, #fsrfuhufzz th {
  border-style: none;
}
&#10;#fsrfuhufzz p {
  margin: 0;
  padding: 0;
}
&#10;#fsrfuhufzz .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: small;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #000000;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #000000;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}
&#10;#fsrfuhufzz .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}
&#10;#fsrfuhufzz .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}
&#10;#fsrfuhufzz .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}
&#10;#fsrfuhufzz .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#fsrfuhufzz .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #5F5F5F;
}
&#10;#fsrfuhufzz .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #5F5F5F;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #5F5F5F;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#fsrfuhufzz .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}
&#10;#fsrfuhufzz .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}
&#10;#fsrfuhufzz .gt_column_spanner_outer:first-child {
  padding-left: 0;
}
&#10;#fsrfuhufzz .gt_column_spanner_outer:last-child {
  padding-right: 0;
}
&#10;#fsrfuhufzz .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #5F5F5F;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}
&#10;#fsrfuhufzz .gt_spanner_row {
  border-bottom-style: hidden;
}
&#10;#fsrfuhufzz .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #5F5F5F;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #5F5F5F;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}
&#10;#fsrfuhufzz .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #5F5F5F;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #5F5F5F;
  vertical-align: middle;
}
&#10;#fsrfuhufzz .gt_from_md > :first-child {
  margin-top: 0;
}
&#10;#fsrfuhufzz .gt_from_md > :last-child {
  margin-bottom: 0;
}
&#10;#fsrfuhufzz .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: none;
  border-top-width: 1px;
  border-top-color: #D5D5D5;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D5D5D5;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D5D5D5;
  vertical-align: middle;
  overflow-x: hidden;
}
&#10;#fsrfuhufzz .gt_stub {
  color: #FFFFFF;
  background-color: #5F5F5F;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #5F5F5F;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#fsrfuhufzz .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}
&#10;#fsrfuhufzz .gt_row_group_first td {
  border-top-width: 2px;
}
&#10;#fsrfuhufzz .gt_row_group_first th {
  border-top-width: 2px;
}
&#10;#fsrfuhufzz .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#fsrfuhufzz .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #5F5F5F;
}
&#10;#fsrfuhufzz .gt_first_summary_row.thick {
  border-top-width: 2px;
}
&#10;#fsrfuhufzz .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #5F5F5F;
}
&#10;#fsrfuhufzz .gt_grand_summary_row {
  color: #333333;
  background-color: #D5D5D5;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#fsrfuhufzz .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #5F5F5F;
}
&#10;#fsrfuhufzz .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #5F5F5F;
}
&#10;#fsrfuhufzz .gt_striped {
  background-color: #F4F4F4;
}
&#10;#fsrfuhufzz .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #5F5F5F;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #5F5F5F;
}
&#10;#fsrfuhufzz .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#fsrfuhufzz .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#fsrfuhufzz .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#fsrfuhufzz .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#fsrfuhufzz .gt_left {
  text-align: left;
}
&#10;#fsrfuhufzz .gt_center {
  text-align: center;
}
&#10;#fsrfuhufzz .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}
&#10;#fsrfuhufzz .gt_font_normal {
  font-weight: normal;
}
&#10;#fsrfuhufzz .gt_font_bold {
  font-weight: bold;
}
&#10;#fsrfuhufzz .gt_font_italic {
  font-style: italic;
}
&#10;#fsrfuhufzz .gt_super {
  font-size: 65%;
}
&#10;#fsrfuhufzz .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}
&#10;#fsrfuhufzz .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}
&#10;#fsrfuhufzz .gt_indent_1 {
  text-indent: 5px;
}
&#10;#fsrfuhufzz .gt_indent_2 {
  text-indent: 10px;
}
&#10;#fsrfuhufzz .gt_indent_3 {
  text-indent: 15px;
}
&#10;#fsrfuhufzz .gt_indent_4 {
  text-indent: 20px;
}
&#10;#fsrfuhufzz .gt_indent_5 {
  text-indent: 25px;
}
&#10;#fsrfuhufzz .katex-display {
  display: inline-flex !important;
  margin-bottom: 0.75em !important;
}
&#10;#fsrfuhufzz div.Reactable > div.rt-table > div.rt-thead > div.rt-tr.rt-tr-group-header > div.rt-th-group:after {
  height: 0px !important;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <caption>Table 3: Variables in term</caption>
  <thead>
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" style="background-color: #C7EAE5;" scope="col" id="variable">variable</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" style="background-color: #C7EAE5;" scope="col" id="class">class</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="variable" class="gt_row gt_left">mcid</td>
<td headers="class" class="gt_row gt_left">character</td></tr>
    <tr><td headers="variable" class="gt_row gt_left gt_striped">institution</td>
<td headers="class" class="gt_row gt_left gt_striped">character</td></tr>
    <tr><td headers="variable" class="gt_row gt_left">term</td>
<td headers="class" class="gt_row gt_left">character</td></tr>
    <tr><td headers="variable" class="gt_row gt_left gt_striped">cip6</td>
<td headers="class" class="gt_row gt_left gt_striped">character</td></tr>
    <tr><td headers="variable" class="gt_row gt_left">level</td>
<td headers="class" class="gt_row gt_left">character</td></tr>
    <tr><td headers="variable" class="gt_row gt_left gt_striped">standing</td>
<td headers="class" class="gt_row gt_left gt_striped">character</td></tr>
    <tr><td headers="variable" class="gt_row gt_left">coop</td>
<td headers="class" class="gt_row gt_left">character</td></tr>
    <tr><td headers="variable" class="gt_row gt_left gt_striped">hours_term</td>
<td headers="class" class="gt_row gt_left gt_striped">numeric</td></tr>
    <tr><td headers="variable" class="gt_row gt_left">hours_term_attempt</td>
<td headers="class" class="gt_row gt_left">numeric</td></tr>
    <tr><td headers="variable" class="gt_row gt_left gt_striped">hours_cumul</td>
<td headers="class" class="gt_row gt_left gt_striped">numeric</td></tr>
    <tr><td headers="variable" class="gt_row gt_left">hours_cumul_attempt</td>
<td headers="class" class="gt_row gt_left">numeric</td></tr>
    <tr><td headers="variable" class="gt_row gt_left gt_striped">gpa_term</td>
<td headers="class" class="gt_row gt_left gt_striped">numeric</td></tr>
    <tr><td headers="variable" class="gt_row gt_left">gpa_cumul</td>
<td headers="class" class="gt_row gt_left">numeric</td></tr>
  </tbody>
  &#10;</table>
</div>

The key for the term data is a composite key of two variables: student
ID and term.

``` r
# Check that the indicated column forms a primary key
DT <- copy(term)
key_col_names <- c("mcid", "term")
wrapr::checkColsFormUniqueKeys(DT, key_col_names)
#> [1] TRUE

# Composite key variables should have no missing values
sum(is.na(term$mcid))
#> [1] 0
sum(is.na(term$term))
#> [1] 0
```

Rows contain one observation per student per term.

``` r
# First few rows and last few rows
term
#>                   mcid   institution   term   cip6         level
#>                 <char>        <char> <char> <char>        <char>
#>      1: MCID3111142225 Institution B  19881 140901 01 First-year
#>      2: MCID3111142283 Institution J  19881 240102 01 First-year
#>      3: MCID3111142283 Institution J  19883 240102 01 First-year
#>     ---                                                         
#> 639913: MCID3112898894 Institution B  20181 451001 01 First-year
#> 639914: MCID3112898895 Institution B  20181 302001 01 First-year
#> 639915: MCID3112898940 Institution B  20181 050103 01 First-year
#>                   standing   coop hours_term hours_term_attempt hours_cumul
#>                     <char> <char>      <num>              <num>       <num>
#>      1:      Good Standing     No          7                  7           7
#>      2: Academic Probation     No          6                  6           6
#>      3: Academic Probation     No         12                 12          18
#>     ---                                                                    
#> 639913:      Good Standing     No         13                 13          13
#> 639914:      Good Standing     No         18                 18          18
#> 639915:      Good Standing     No         15                 15          15
#>         hours_cumul_attempt gpa_term gpa_cumul
#>                       <num>    <num>     <num>
#>      1:                   7     2.56      2.56
#>      2:                   6     1.85      1.85
#>      3:                  18     1.93      1.90
#>     ---                                       
#> 639913:                  13     3.52      3.52
#> 639914:                  18     3.50      3.50
#> 639915:                  15     2.18      2.18
```

Terms are encoded `YYYYT`, where

- `YYYY` is the year at the start of the academic year, and  
- `T` encodes the semester or quarter—Fall (`1`), Winter (`2`), Spring
  (`3`), and Summer (`4`, `5`, and `6`)—within an academic year

For example, for academic year 1995–96,

- `19951` encodes Fall 95–96
- `19953` encodes Spring 95–96
- `19954` encodes Summer 95–96 (first session)

Different institutions supply data over different time spans.

``` r
# Range of data by institution
term[, .(min_term = min(term), max_term = max(term)), by = "institution"]
#>      institution min_term max_term
#>           <char>   <char>   <char>
#> 1: Institution B    19881    20181
#> 2: Institution J    19881    20096
#> 3: Institution C    19901    20154
```

Programs are encoded in the `cip6` variable, a 6-digit character based
on the 2010 Classification of Instructional Programs (CIP) ([*IPEDS
Classification of Instructional Programs* 2010](#ref-cip2010)).

``` r
# A sample of cip6 values
sort(unique(sample(term$cip6, 8)))
#> [1] "110101" "140102" "140701" "140801" "240102" "310505"
```

Student level is used when determining timely completion terms of
transfer students.

``` r
# Possible values
sort(unique(term$level))
#> [1] "01 First-year"      "02 Second-year"     "03 Third-year"     
#> [4] "04 Fourth-year"     "05 Fifth-year Plus"
```

## `degree`

Data table with 5 variables and 49,665 rows. The variables are listed in
Table 4.

<div id="dpwzwszcsm" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#dpwzwszcsm table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
&#10;#dpwzwszcsm thead, #dpwzwszcsm tbody, #dpwzwszcsm tfoot, #dpwzwszcsm tr, #dpwzwszcsm td, #dpwzwszcsm th {
  border-style: none;
}
&#10;#dpwzwszcsm p {
  margin: 0;
  padding: 0;
}
&#10;#dpwzwszcsm .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: small;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #000000;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #000000;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}
&#10;#dpwzwszcsm .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}
&#10;#dpwzwszcsm .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}
&#10;#dpwzwszcsm .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}
&#10;#dpwzwszcsm .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#dpwzwszcsm .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #5F5F5F;
}
&#10;#dpwzwszcsm .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #5F5F5F;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #5F5F5F;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#dpwzwszcsm .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}
&#10;#dpwzwszcsm .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}
&#10;#dpwzwszcsm .gt_column_spanner_outer:first-child {
  padding-left: 0;
}
&#10;#dpwzwszcsm .gt_column_spanner_outer:last-child {
  padding-right: 0;
}
&#10;#dpwzwszcsm .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #5F5F5F;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}
&#10;#dpwzwszcsm .gt_spanner_row {
  border-bottom-style: hidden;
}
&#10;#dpwzwszcsm .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #5F5F5F;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #5F5F5F;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}
&#10;#dpwzwszcsm .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #5F5F5F;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #5F5F5F;
  vertical-align: middle;
}
&#10;#dpwzwszcsm .gt_from_md > :first-child {
  margin-top: 0;
}
&#10;#dpwzwszcsm .gt_from_md > :last-child {
  margin-bottom: 0;
}
&#10;#dpwzwszcsm .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: none;
  border-top-width: 1px;
  border-top-color: #D5D5D5;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D5D5D5;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D5D5D5;
  vertical-align: middle;
  overflow-x: hidden;
}
&#10;#dpwzwszcsm .gt_stub {
  color: #FFFFFF;
  background-color: #5F5F5F;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #5F5F5F;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#dpwzwszcsm .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}
&#10;#dpwzwszcsm .gt_row_group_first td {
  border-top-width: 2px;
}
&#10;#dpwzwszcsm .gt_row_group_first th {
  border-top-width: 2px;
}
&#10;#dpwzwszcsm .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#dpwzwszcsm .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #5F5F5F;
}
&#10;#dpwzwszcsm .gt_first_summary_row.thick {
  border-top-width: 2px;
}
&#10;#dpwzwszcsm .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #5F5F5F;
}
&#10;#dpwzwszcsm .gt_grand_summary_row {
  color: #333333;
  background-color: #D5D5D5;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#dpwzwszcsm .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #5F5F5F;
}
&#10;#dpwzwszcsm .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #5F5F5F;
}
&#10;#dpwzwszcsm .gt_striped {
  background-color: #F4F4F4;
}
&#10;#dpwzwszcsm .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #5F5F5F;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #5F5F5F;
}
&#10;#dpwzwszcsm .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#dpwzwszcsm .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#dpwzwszcsm .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#dpwzwszcsm .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#dpwzwszcsm .gt_left {
  text-align: left;
}
&#10;#dpwzwszcsm .gt_center {
  text-align: center;
}
&#10;#dpwzwszcsm .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}
&#10;#dpwzwszcsm .gt_font_normal {
  font-weight: normal;
}
&#10;#dpwzwszcsm .gt_font_bold {
  font-weight: bold;
}
&#10;#dpwzwszcsm .gt_font_italic {
  font-style: italic;
}
&#10;#dpwzwszcsm .gt_super {
  font-size: 65%;
}
&#10;#dpwzwszcsm .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}
&#10;#dpwzwszcsm .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}
&#10;#dpwzwszcsm .gt_indent_1 {
  text-indent: 5px;
}
&#10;#dpwzwszcsm .gt_indent_2 {
  text-indent: 10px;
}
&#10;#dpwzwszcsm .gt_indent_3 {
  text-indent: 15px;
}
&#10;#dpwzwszcsm .gt_indent_4 {
  text-indent: 20px;
}
&#10;#dpwzwszcsm .gt_indent_5 {
  text-indent: 25px;
}
&#10;#dpwzwszcsm .katex-display {
  display: inline-flex !important;
  margin-bottom: 0.75em !important;
}
&#10;#dpwzwszcsm div.Reactable > div.rt-table > div.rt-thead > div.rt-tr.rt-tr-group-header > div.rt-th-group:after {
  height: 0px !important;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <caption>Table 4: Variables in degree</caption>
  <thead>
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" style="background-color: #C7EAE5;" scope="col" id="variable">variable</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" style="background-color: #C7EAE5;" scope="col" id="class">class</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="variable" class="gt_row gt_left">mcid</td>
<td headers="class" class="gt_row gt_left">character</td></tr>
    <tr><td headers="variable" class="gt_row gt_left gt_striped">institution</td>
<td headers="class" class="gt_row gt_left gt_striped">character</td></tr>
    <tr><td headers="variable" class="gt_row gt_left">term_degree</td>
<td headers="class" class="gt_row gt_left">character</td></tr>
    <tr><td headers="variable" class="gt_row gt_left gt_striped">cip6</td>
<td headers="class" class="gt_row gt_left gt_striped">character</td></tr>
    <tr><td headers="variable" class="gt_row gt_left">degree</td>
<td headers="class" class="gt_row gt_left">character</td></tr>
  </tbody>
  &#10;</table>
</div>

The key for the degree data is a composite key of two variables: student
ID and degree

``` r
# Check that the indicated column forms a primary key
DT <- copy(degree)
key_col_names <- c("mcid", "degree")
wrapr::checkColsFormUniqueKeys(DT, key_col_names)
#> [1] TRUE

# Composite key variables should have no missing values
sum(is.na(degree$mcid))
#> [1] 0
sum(is.na(degree$degree))
#> [1] 0
```

Rows contain one observation per student per degree.

``` r
# First few rows and last few rows
degree
#>                  mcid   institution term_degree   cip6
#>                <char>        <char>      <char> <char>
#>     1: MCID3111142225 Institution B       19881 141001
#>     2: MCID3111142290 Institution J       19921 141001
#>     3: MCID3111142294 Institution J       19903 141001
#>    ---                                                
#> 49663: MCID3112839623 Institution B       20181 160102
#> 49664: MCID3112845220 Institution B       20181 270101
#> 49665: MCID3112845673 Institution B       20174 090101
#>                                                          degree
#>                                                          <char>
#>     1:            Bachelor of Science in Electrical Engineering
#>     2:            Bachelor of Science in Electrical Engineering
#>     3:            Bachelor of Science in Electrical Engineering
#>    ---                                                         
#> 49663:                       Bachelor of Science in Linguistics
#> 49664:                       Bachelor of Science in Mathematics
#> 49665: Bachelor of Science in Speech Communication and Rhetoric
```

This dataset contains records for graduates only, thus the number of
observations in `degree` (49,665) is less than the number of
observations in `student` (97,555). The `term_degree` and `cip6`
variables indicate when and from which program a student graduates.

Number of degrees earned per student. In these practice data, only one
student earned more than one degree.

``` r
# Count number of degrees by student
by_id <- degree[, .(degree_count = .N), by = "mcid"]

# Count number of students by number of degrees earned
by_id[, .(N_students = .N), by = "degree_count"]
#>    degree_count N_students
#>           <int>      <int>
#> 1:            1      49421
#> 2:            2        122
```

## References

<div id="refs" class="references csl-bib-body hanging-indent">

<div id="ref-cip2010" class="csl-entry">

*IPEDS Classification of Instructional Programs*. 2010. National Center
for Education Statistics (NCES); <https://nces.ed.gov/ipeds/cipcode/>.

</div>

</div>
