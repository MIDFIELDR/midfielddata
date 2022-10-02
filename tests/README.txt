Unit tests with tinytest 

https://github.com/markvanderloo/tinytest

We use the tinytest R package for unit tests in midfieldr and midfielddata. In 
tinytest, tests are scripts interspersed with statements that perform checks. 

Package testing is set up as follows: 

1. In the DESCRIPTION file, tinytest is added to Suggests:. 

2. The midfielddata/tests/ directory contains an R file named tinytest.R that 
   contains the following script:  

     if (requireNamespace("tinytest", quietly = TRUE)){
       tinytest::test_package("midfielddata" )
     }

3. The midfielddata/inst/tinytest/ directory contains the test file R scripts, 
   in this case one test file per data set. The filenames all start with `test`, 
   for exmaple, `test_student.R`. 
  
midfieldr and midfielddata users can run the tinytest tests themselves by 
installing tinytest and running: 
 
    tinytest::test_package("midfieldr")
    tinytest::test_package("midfielddata")

For detailed information including test functions, see 

    vignette("using_tinytest", package = "tinytest")
