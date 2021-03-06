% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calculations-smap.R
\name{compute_smap_coeffs}
\alias{compute_smap_coeffs}
\title{Compute S-map coefficients for a community}
\usage{
compute_smap_coeffs(block, ccm_links, rescale = TRUE,
  rolling_forecast = FALSE, id_var = NULL)
}
\arguments{
\item{block}{a data.frame containing time series for the community. Each
column is a time series of abundances.}

\item{ccm_links}{A data.frame containing the significant causal links. Each
row is a causal link. The columns are:
\describe{
\item{\code{xmap_from}}{the column index of the predictor variable in CCM}
\item{\code{xmap_to}}{the column index of the predicted variable in CCM}
\item{\code{best_E}}{the best embedding dimension for CCM}
}}

\item{rescale}{A logical, indicating whether to rescale each time series}

\item{rolling_forecast}{A logical, indicating whether to make individual
rolling forecasts for the second half of the time series.}

\item{id_var}{the name of the index variable of \code{block} that is useful for
labeling the time-varying output, if it exists}
}
\value{
A list with the matrix smap-coefficients for each predictor variable
identified in CCM (these are the affected variables). The names in the list
and the column names of the matrices use the variable names in the block.
}
\description{
Compute S-map models for each time series in the \code{block} and
save out the coefficients. The coefficients represent the local linear
model and can be used to infer properties of the system dynamics.
}
\details{
Suppose that there are causal links as follows:
\code{x --> y}
\code{x --> z}
where \code{-->} indicates "cross-maps to". Then the interpretation from CCM is
that \code{x} is affected by causes \code{y} and \code{z}. Thus, the predictive model for
\code{x} should include \code{y} and \code{z} as predictors.

The S-map model is then setup as
x_{t+1} = F(x_t, y_t, z_t, x_{t-1}, x_{t-2}, ...)
where the number of predictors is equal to the best embedding dimension for
\code{x}.
}
