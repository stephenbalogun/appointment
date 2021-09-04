#' appt_next
#'
#' @param c_date ISO8601
#' @param d_pills integer duration of pills dispensed
#' @param days integer, number of days of appointment
#'
#' @return nicely formatted date
#' @export
#'
#' @examples
#' appt_next(d_pills = 14)
appt_next <- function(c_date = Sys.Date(), d_pills, days = NULL) {
  c_date <- as.Date(c_date)

  dt <- if (is.null(days)) {
    date_stamp(c_date + as.integer(d_pills))
  } else {
    date_stamp(c_date + as.integer(days))
  }

  cat("Your next clinic appointment is on", dt, sep = " ")
}
