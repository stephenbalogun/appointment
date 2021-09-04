test_that("appoitment last is consistent with standar", {
  expect_identical(
    appt_last(Sys.Date(), d_pills = 5),
    cat("Your last clinic appointment was on ",
        format(Sys.Date() - as.integer(5), "%A, %d %B %Y"))
  )
})
