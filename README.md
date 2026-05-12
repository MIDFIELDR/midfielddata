
<!-- README.md is generated from README.Rmd. Please edit that file -->

<br>midfielddata is an R data package that supplies anonymized
student-level records for 98,000 undergraduates from the MIDFIELD
database. Provides practice data for the tools and methods of the
midfieldr package.

<img src="man/figures/logo.png" alt="" width="15%" />

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

<div id="rwmzfhlxmc" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#rwmzfhlxmc table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
&#10;#rwmzfhlxmc thead, #rwmzfhlxmc tbody, #rwmzfhlxmc tfoot, #rwmzfhlxmc tr, #rwmzfhlxmc td, #rwmzfhlxmc th {
  border-style: none;
}
&#10;#rwmzfhlxmc p {
  margin: 0;
  padding: 0;
}
&#10;#rwmzfhlxmc .gt_table {
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
&#10;#rwmzfhlxmc .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}
&#10;#rwmzfhlxmc .gt_title {
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
&#10;#rwmzfhlxmc .gt_subtitle {
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
&#10;#rwmzfhlxmc .gt_heading {
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
&#10;#rwmzfhlxmc .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #5F5F5F;
}
&#10;#rwmzfhlxmc .gt_col_headings {
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
&#10;#rwmzfhlxmc .gt_col_heading {
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
&#10;#rwmzfhlxmc .gt_column_spanner_outer {
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
&#10;#rwmzfhlxmc .gt_column_spanner_outer:first-child {
  padding-left: 0;
}
&#10;#rwmzfhlxmc .gt_column_spanner_outer:last-child {
  padding-right: 0;
}
&#10;#rwmzfhlxmc .gt_column_spanner {
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
&#10;#rwmzfhlxmc .gt_spanner_row {
  border-bottom-style: hidden;
}
&#10;#rwmzfhlxmc .gt_group_heading {
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
&#10;#rwmzfhlxmc .gt_empty_group_heading {
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
&#10;#rwmzfhlxmc .gt_from_md > :first-child {
  margin-top: 0;
}
&#10;#rwmzfhlxmc .gt_from_md > :last-child {
  margin-bottom: 0;
}
&#10;#rwmzfhlxmc .gt_row {
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
&#10;#rwmzfhlxmc .gt_stub {
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
&#10;#rwmzfhlxmc .gt_stub_row_group {
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
&#10;#rwmzfhlxmc .gt_row_group_first td {
  border-top-width: 2px;
}
&#10;#rwmzfhlxmc .gt_row_group_first th {
  border-top-width: 2px;
}
&#10;#rwmzfhlxmc .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#rwmzfhlxmc .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #5F5F5F;
}
&#10;#rwmzfhlxmc .gt_first_summary_row.thick {
  border-top-width: 2px;
}
&#10;#rwmzfhlxmc .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #5F5F5F;
}
&#10;#rwmzfhlxmc .gt_grand_summary_row {
  color: #333333;
  background-color: #D5D5D5;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#rwmzfhlxmc .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #5F5F5F;
}
&#10;#rwmzfhlxmc .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #5F5F5F;
}
&#10;#rwmzfhlxmc .gt_striped {
  background-color: #F4F4F4;
}
&#10;#rwmzfhlxmc .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #5F5F5F;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #5F5F5F;
}
&#10;#rwmzfhlxmc .gt_footnotes {
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
&#10;#rwmzfhlxmc .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#rwmzfhlxmc .gt_sourcenotes {
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
&#10;#rwmzfhlxmc .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#rwmzfhlxmc .gt_left {
  text-align: left;
}
&#10;#rwmzfhlxmc .gt_center {
  text-align: center;
}
&#10;#rwmzfhlxmc .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}
&#10;#rwmzfhlxmc .gt_font_normal {
  font-weight: normal;
}
&#10;#rwmzfhlxmc .gt_font_bold {
  font-weight: bold;
}
&#10;#rwmzfhlxmc .gt_font_italic {
  font-style: italic;
}
&#10;#rwmzfhlxmc .gt_super {
  font-size: 65%;
}
&#10;#rwmzfhlxmc .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}
&#10;#rwmzfhlxmc .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}
&#10;#rwmzfhlxmc .gt_indent_1 {
  text-indent: 5px;
}
&#10;#rwmzfhlxmc .gt_indent_2 {
  text-indent: 10px;
}
&#10;#rwmzfhlxmc .gt_indent_3 {
  text-indent: 15px;
}
&#10;#rwmzfhlxmc .gt_indent_4 {
  text-indent: 20px;
}
&#10;#rwmzfhlxmc .gt_indent_5 {
  text-indent: 25px;
}
&#10;#rwmzfhlxmc .katex-display {
  display: inline-flex !important;
  margin-bottom: 0.75em !important;
}
&#10;#rwmzfhlxmc div.Reactable > div.rt-table > div.rt-thead > div.rt-tr.rt-tr-group-header > div.rt-th-group:after {
  height: 0px !important;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <caption>Table 1: Practice datasets in midfielddata</caption>
  <thead>
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" style="background-color: #C7EAE5;" scope="col" id="Dataset">Dataset</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" style="background-color: #C7EAE5;" scope="col" id="Each-row-is">Each row is</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" style="background-color: #C7EAE5;" scope="col" id="Students">Students</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" style="background-color: #C7EAE5;" scope="col" id="Rows">Rows</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" style="background-color: #C7EAE5;" scope="col" id="Columns">Columns</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" style="background-color: #C7EAE5;" scope="col" id="Memory-(Mb)">Memory (Mb)</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="Dataset" class="gt_row gt_left">course</td>
<td headers="Each row is" class="gt_row gt_left">one student per term per course</td>
<td headers="Students" class="gt_row gt_right">97,555</td>
<td headers="Rows" class="gt_row gt_right">3,289,532</td>
<td headers="Columns" class="gt_row gt_right">12</td>
<td headers="Memory (Mb)" class="gt_row gt_right">324.3</td></tr>
    <tr><td headers="Dataset" class="gt_row gt_left gt_striped">term</td>
<td headers="Each row is" class="gt_row gt_left gt_striped">one student per term</td>
<td headers="Students" class="gt_row gt_right gt_striped">97,555</td>
<td headers="Rows" class="gt_row gt_right gt_striped">639,915</td>
<td headers="Columns" class="gt_row gt_right gt_striped">13</td>
<td headers="Memory (Mb)" class="gt_row gt_right gt_striped">72.8</td></tr>
    <tr><td headers="Dataset" class="gt_row gt_left">student</td>
<td headers="Each row is" class="gt_row gt_left">one student</td>
<td headers="Students" class="gt_row gt_right">97,555</td>
<td headers="Rows" class="gt_row gt_right">97,555</td>
<td headers="Columns" class="gt_row gt_right">13</td>
<td headers="Memory (Mb)" class="gt_row gt_right">17.3</td></tr>
    <tr><td headers="Dataset" class="gt_row gt_left gt_striped">degree</td>
<td headers="Each row is" class="gt_row gt_left gt_striped">one student per degree</td>
<td headers="Students" class="gt_row gt_right gt_striped">49,543</td>
<td headers="Rows" class="gt_row gt_right gt_striped">49,665</td>
<td headers="Columns" class="gt_row gt_right gt_striped">5</td>
<td headers="Memory (Mb)" class="gt_row gt_right gt_striped">5.2</td></tr>
  </tbody>
  &#10;</table>
</div>

The data in midfielddata are a proportionate stratified sample of the
[MIDFIELD](#more-information) database, but are *not suitable for
drawing inferences* about program attributes or student
experiences—midfielddata are for *practice*, not research.

*Notes on syntax.*   We use data.table for data manipulation. For users
who prefer base R or dplyr, our website for the 2024 MIDFIELD Institute
<a href="https://midfieldr.github.io/2024-midfield-institute/data-shaping-00-introduction.html">\[link\]</a>
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

<div id="refs" class="references csl-bib-body hanging-indent">

<div id="ref-aee2016" class="csl-entry">

Ohland, Matthew W., and Russell A. Long. 2016. “The Multiple-Institution
Database for Investigating Engineering Longitudinal Development: An
Experiential Case Study of Data Sharing and Reuse.” *Advances in
Engineering Education* 5 (2).
<https://advances.asee.org/wp-content/uploads/vol05/issue02/Papers/AEE-18-Ohland.pdf>.

</div>

</div>

<style type="text/css">
blockquote {
    padding:     10px 20px;
    margin:      0 0 20px;
    border-left: 0px
}
caption {
    color:       #525252;
    text-align:  left;
    font-weight: normal;
    font-size:   medium;
    line-height: 1.5;
}
</style>
