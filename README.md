# lazytrade

all functions and scripts of the lazy trade project

# quick start

Load this package by running this code:
`devtools::install_github("vzhomeexperiments/lazytrade")`

# Notes to remind myself how to create R package

taken from http://r-pkgs.had.co.nz

## Generating Documentation

Run this code to re-generate documentation
`devtools::document()`

Run this code to fix license:
`usethis::use_mit_license(name = "Vladimir Zhbanko")`

## Adding data to the package for internal tests

Run this code to add data to the folder `data/`
`x <- sample(1000)`
`usethis::use_data(x)`

Note: use option 'LazyLoad` to make data available only when user wants it
always include LazyData: true in your DESCRIPTION. 
Note: to documente dataset see https://stackoverflow.com/questions/2310409/how-can-i-document-data-sets-with-roxygen

## Adding examples to test package function

### Tests setup first time

Run this command to setup tests
'usethis::use_testthat()'

This will create a folder with the name `tests`

Inside this folder there will be another folder `testthat`. 

### Examples in Roxygen code

@example ...

code to execute during package checks

@example 

/dontrun{

code to NOT execute during package checks
 
}


### Create a test script

Run this command to create a new script with the test scheleton:

`usethis::use_test("profit_factor.R")`

### Enrich the test script

Details:

1. add libraries used for test
2. add function `context("profit_factor")`
3. add function test_that("test description", {test process})
4. load data using function `data(named_data_object)`

```{r}
library(testthat)
library(tidyverse)
context("profit_factor")

test_that("test value of the calculation", {

  data(profit_factor_data)

  DF_Stats <- profit_factor_data %>%
    group_by(X1) %>%
    summarise(PnL = sum(X5),
              NumTrades = n(),
              PrFact = profit_factor(X5)) %>%
    select(PrFact) %>%
    head(1) %>%
    as.vector() %>%
    round(3)

  expect_equal(DF_Stats$PrFact, 0.68)

})


```

# Checking package

Step 1. `devtools::document()`
Step 2. `devtools::run_examples()`
Step 3. Menu 'Build' `Clean and Rebuild`
Step 4. 'Check'


`devtools::check()`

# Cran Note Avoidance
see https://stackoverflow.com/questions/9439256/how-can-i-handle-r-cmd-check-no-visible-binding-for-global-variable-notes-when
see https://github.com/HughParsonage/grattan/blob/master/R/zzz.R
