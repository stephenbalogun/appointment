#' date_stamp
#'
#' @param date ISO8601 date standard
#'
#' @return long format date
#' @keywords internal
#'
date_stamp <- function(date) {

  date <- lubridate::as_date(date)

  base::format(date, "%A, %d %B %Y")
}
