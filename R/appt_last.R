#' appt_last
#'
#' @inheritParams appt_next
#' @return long date formate
#' @export
#'
#' @examples
#' pill_days <- 7
#' appt_last(d_pills = pill_days)
appt_last <- function(c_date = Sys.Date(), d_pills, days = NULL) {
  c_date <- as.Date(c_date)

  dt <- if (is.null(days)) {
    date_stamp(c_date - as.integer(d_pills))
  } else {
    date_stamp(c_date - as.integer(days))
  }

  cat("Your last clinic appointment was on", dt, sep = " ")
}
