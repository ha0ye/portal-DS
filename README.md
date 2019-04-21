
<!-- README.md is generated from README.Rmd. Please edit that file -->

# portalDS

[![Build
Status](https://travis-ci.org/ha0ye/portalDS.svg?branch=master)](https://travis-ci.org/ha0ye/portalDS)
[![codecov](https://codecov.io/gh/ha0ye/portalDS/branch/master/graph/badge.svg)](https://codecov.io/gh/ha0ye/portalDS)

The goal of portalDS is to apply “dynamic stability” (Ushio et al. 2018)
to the long-term rodent time series at Portal, to test whether this
indicator of whole-ecosystem change predicts or lines up with abrupt
community shifts.

## Project Organization

This project is set up as an R package that implements functions for
computing “dynamic stability”, mostly following Ben Marwick’s
[rrtools](https://github.com/benmarwick/rrtools) setup:

  - The `maizuru-dynamic-stability` vignette reproduces the Maizuru Bay
    analysis from Ushio et al. 2018 as an example.
  - The `analysis` folder contains R scripts and objects for the Portal
    dynamic stability analysis.
  - The `data`, `output`, and `figures` folders contain data, results,
    and figures for both the Portal and the Maizuru Bay analysis.

## Installation

You can install the current version of portalDS from
[GitHub](https://github.com/ha0ye/portalDS) with:

``` r
# install.packages("remotes")
remotes::install_github("ha0ye/portalDS")
```
