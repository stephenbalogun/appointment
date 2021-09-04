
<!-- README.md is generated from README.Rmd. Please edit that file -->

# appointment

<!-- badges: start -->
<!-- badges: end -->

The goal of appointment is to …

## Installation

You can install the released version of appointment from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("appointment")
```

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("stephenbalogun/appointment")
```

## \#\# Example

title: “Introduction to the appointment package” output:
rmarkdown::html\_vignette vignette: &gt; % % % —

``` r
library(appointment)
```

The {appointment} package allows you to be able to set clinic
appointments in a nicely formatted style. It has two functions -
`appt_next()` and `appt_last`. Both of which take three arguments -
clinic date (c\_date), duration of pills (d\_pills), and next
appointment date (days). `d_pills` and `days` are mutually exclusive.

We are going to create some useful scenarios:

1.  Imagine a patient who comes to the clinic on Friday, 3rd September
    2021 and had 2 weeks worth of medications dispensed. He is expected
    to come for next check up on the last day of his medication.

``` r
clinic_date <- "2021-09-03"
pill_days <- 14

appt_next(clinic_date, pill_days)
#> Your next clinic appointment is on Friday, 17 September 2021
```

2.  Imagine a patient who came to the hospital on Saturday, 4th
    September 2021. He has now be adjudged to be healthy so he does not
    require anymore medications but will still require a follow up a
    week after.

``` r
clinic_date <- "2021-09-04"
follow_up_days <- 7

appt_next(clinic_date, follow_up_days)
#> Your next clinic appointment is on Saturday, 11 September 2021
```

3.  Finally, let us assume a patient who comes to the clinic on the
    first of September 2021. He remembers that he was given 20 days
    worth of medications during the last appointment but could not
    remember the exact appointment date. You’d like to know the date to
    pull his last clinic records.

``` r
clinic_date <- "2021-09-01"
d_pills <- 20

appt_last(clinic_date, d_pills)
#> Your last clinic appointment was on Thursday, 12 August 2021
```
