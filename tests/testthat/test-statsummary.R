context("statSummary must return a vector")

test_that("Numeric outputs are returned", {
  testData <- statSummary(1:20)
  expect_is(testData, "numeric")
  expect_named(testData, c("Min", "Mean", "Variance", "Max"))

})

test_that("Errors correct",{

})
