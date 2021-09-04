test_that("date_stamp is consistent", {
  expect_identical(
    date_stamp(Sys.Date()),
    format(Sys.Date(), format = "%A, %d %B %Y")
  )
})
