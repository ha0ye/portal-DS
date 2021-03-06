% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data-sim-3sp-food-chain.R
\name{simulate_3sp_food_chain}
\alias{simulate_3sp_food_chain}
\title{Get a data.frame of simulated abundances (3-species food chain)}
\usage{
simulate_3sp_food_chain(params = c(a_1 = 2.5, b_1 = 3.2, a_2 = 0.1, b_2 =
  2, d_1 = 0.2, d_2 = 0.015), initial_state = c(x = 0.8, y = 0.2, z = 8),
  sample_times = seq(0, 5000, by = 5), ...)
}
\arguments{
\item{params}{model parameters}

\item{initial_state}{initial conditions}

\item{sample_times}{the time values at which to make observations}

\item{...}{remaining arguments to be passed to \code{\link[deSolve:ode]{deSolve::ode()}}}
}
\value{
a matrix (and \code{deSolve}) object with the observations (and times)
}
\description{
Simulate time series from the 3-species food chain model of
Hastings & Powell (1991) <\url{https://doi.org/10.2307/1940591}>. The
chosen initial state and parameters should give chaotic dynamics that
produce a "teacup" attractor.
}
