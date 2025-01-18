
<!-- README.md is generated from README.Rmd. Please edit that file -->

# `{financedashboard}`

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->

## Installation

You can install the development version of `{financedashboard}` like so:

``` r
devtools::install_github("Steven314/financedashboard")
```

## Run

You can launch the application by running:

``` r
financedashboard::run_app()
```

## About

You are reading the doc about version: 0.0.0.9000

This README has been compiled on the

``` r
Sys.time()
#> [1] "2025-01-18 17:43:53 EST"
```

Here are the tests results and package coverage:

``` r
devtools::check(quiet = TRUE, cran = FALSE)
#> ℹ Loading financedashboard
#> ── R CMD check results ──────────────────────── financedashboard 0.0.0.9000 ────
#> Duration: 27.1s
#> 
#> 0 errors ✔ | 0 warnings ✔ | 0 notes ✔
```

``` r
covr::package_coverage()
#> financedashboard Coverage: 67.65%
#> R/run_app.R: 0.00%
#> R/app_config.R: 100.00%
#> R/app_ui.R: 100.00%
```
