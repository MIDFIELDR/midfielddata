
<!-- README.md is generated from README.Rmd. Please edit that file -->

# midfielddata <img src="man/figures/logo.png" align="right" height="125K">

## Overview

Contains anonymized student-level records for 98,000 undergraduates from
three US institutions from 1988 through 2018 organized in four data
tables keyed by student ID. Student-level records are those collected by
undergraduate institutions on individual students including
demographics, programs and academic standing by term, individual
courses, grades, and degrees.

<div id="natxcvqcqy" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#natxcvqcqy table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
&#10;#natxcvqcqy thead, #natxcvqcqy tbody, #natxcvqcqy tfoot, #natxcvqcqy tr, #natxcvqcqy td, #natxcvqcqy th {
  border-style: none;
}
&#10;#natxcvqcqy p {
  margin: 0;
  padding: 0;
}
&#10;#natxcvqcqy .gt_table {
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
&#10;#natxcvqcqy .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}
&#10;#natxcvqcqy .gt_title {
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
&#10;#natxcvqcqy .gt_subtitle {
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
&#10;#natxcvqcqy .gt_heading {
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
&#10;#natxcvqcqy .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #5F5F5F;
}
&#10;#natxcvqcqy .gt_col_headings {
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
&#10;#natxcvqcqy .gt_col_heading {
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
&#10;#natxcvqcqy .gt_column_spanner_outer {
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
&#10;#natxcvqcqy .gt_column_spanner_outer:first-child {
  padding-left: 0;
}
&#10;#natxcvqcqy .gt_column_spanner_outer:last-child {
  padding-right: 0;
}
&#10;#natxcvqcqy .gt_column_spanner {
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
&#10;#natxcvqcqy .gt_spanner_row {
  border-bottom-style: hidden;
}
&#10;#natxcvqcqy .gt_group_heading {
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
&#10;#natxcvqcqy .gt_empty_group_heading {
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
&#10;#natxcvqcqy .gt_from_md > :first-child {
  margin-top: 0;
}
&#10;#natxcvqcqy .gt_from_md > :last-child {
  margin-bottom: 0;
}
&#10;#natxcvqcqy .gt_row {
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
&#10;#natxcvqcqy .gt_stub {
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
&#10;#natxcvqcqy .gt_stub_row_group {
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
&#10;#natxcvqcqy .gt_row_group_first td {
  border-top-width: 2px;
}
&#10;#natxcvqcqy .gt_row_group_first th {
  border-top-width: 2px;
}
&#10;#natxcvqcqy .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#natxcvqcqy .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #5F5F5F;
}
&#10;#natxcvqcqy .gt_first_summary_row.thick {
  border-top-width: 2px;
}
&#10;#natxcvqcqy .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #5F5F5F;
}
&#10;#natxcvqcqy .gt_grand_summary_row {
  color: #333333;
  background-color: #D5D5D5;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#natxcvqcqy .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #5F5F5F;
}
&#10;#natxcvqcqy .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #5F5F5F;
}
&#10;#natxcvqcqy .gt_striped {
  background-color: #F4F4F4;
}
&#10;#natxcvqcqy .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #5F5F5F;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #5F5F5F;
}
&#10;#natxcvqcqy .gt_footnotes {
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
&#10;#natxcvqcqy .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#natxcvqcqy .gt_sourcenotes {
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
&#10;#natxcvqcqy .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#natxcvqcqy .gt_left {
  text-align: left;
}
&#10;#natxcvqcqy .gt_center {
  text-align: center;
}
&#10;#natxcvqcqy .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}
&#10;#natxcvqcqy .gt_font_normal {
  font-weight: normal;
}
&#10;#natxcvqcqy .gt_font_bold {
  font-weight: bold;
}
&#10;#natxcvqcqy .gt_font_italic {
  font-style: italic;
}
&#10;#natxcvqcqy .gt_super {
  font-size: 65%;
}
&#10;#natxcvqcqy .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}
&#10;#natxcvqcqy .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}
&#10;#natxcvqcqy .gt_indent_1 {
  text-indent: 5px;
}
&#10;#natxcvqcqy .gt_indent_2 {
  text-indent: 10px;
}
&#10;#natxcvqcqy .gt_indent_3 {
  text-indent: 15px;
}
&#10;#natxcvqcqy .gt_indent_4 {
  text-indent: 20px;
}
&#10;#natxcvqcqy .gt_indent_5 {
  text-indent: 25px;
}
&#10;#natxcvqcqy .katex-display {
  display: inline-flex !important;
  margin-bottom: 0.75em !important;
}
&#10;#natxcvqcqy div.Reactable > div.rt-table > div.rt-thead > div.rt-tr.rt-tr-group-header > div.rt-th-group:after {
  height: 0px !important;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" style="background-color: #C7EAE5;" scope="col" id="Data-table">Data table</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" style="background-color: #C7EAE5;" scope="col" id="Example-of-variables">Example of variables</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="Data table" class="gt_row gt_left">student</td>
<td headers="Example of variables" class="gt_row gt_left">ID, institution, transfer status, demographics, SAT, etc.</td></tr>
    <tr><td headers="Data table" class="gt_row gt_left gt_striped">term</td>
<td headers="Example of variables" class="gt_row gt_left gt_striped">ID, institution, term, program, level, standing, etc., </td></tr>
    <tr><td headers="Data table" class="gt_row gt_left">course</td>
<td headers="Example of variables" class="gt_row gt_left">ID, institution, term, course name and number, grade, etc.</td></tr>
    <tr><td headers="Data table" class="gt_row gt_left gt_striped">degree</td>
<td headers="Example of variables" class="gt_row gt_left gt_striped">ID, institution, term, program, degree</td></tr>
  </tbody>
  &#10;</table>
</div>

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
data(term, course, degree)
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

<div id="refs" class="references csl-bib-body hanging-indent">

<div id="ref-Layton+Long+Ohland:2026:midfieldr" class="csl-entry">

Layton, Richard, Russell Long, Susan Lord, Matthew Ohland, and Marisa
Orr. 2026. *<span class="nocase">midfieldr: Tools and Methods for
Working with MIDFIELD Data in R</span>*. R package version 1.0.0.
<https://github.com/MIDFIELDR/midfieldr>.

</div>

<div id="ref-ohland:midfield:2023" class="csl-entry">

Ohland, Matthew. 2023. *MIDFIELD, 2004–2023*.
<https://midfield.online/>.

</div>

</div>
