% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotting_functions.R
\name{plot_time_series}
\alias{plot_time_series}
\title{plot_time_series}
\usage{
plot_time_series(block, time_column = "censusdate", scale = "unif",
  palette_option = "plasma", line_size = 1, base_size = 11)
}
\arguments{
\item{block}{A data.frame containing time series for the community. Each
column is a time series of abundances.}

\item{time_column}{The name of the column in the block that has the time,
which could be a numeric or a date/time type}

\item{scale}{How to scale the time series:
\code{unif} -- scale each time series to be on [0, 1]
\code{norm} -- scale each time series to have mean 0 and variance 1
(anything else) -- no scaling}

\item{palette_option}{the color palette to use (see \code{\link[viridis:viridis]{viridis::viridis()}} for
more info)}

\item{line_size}{the line width for the plot}

\item{base_size}{base font size}
}
\value{
A ggplot object of the time series plot
}
\description{
plot the time series in \code{block}, using the appropriate rescaling
of the data
}
