% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calculations-jacobian-metrics.R
\name{compute_total_variance}
\alias{compute_total_variance}
\title{Compute total variance of the Jacobian matrics}
\usage{
compute_total_variance(smap_matrices, s = NULL)
}
\arguments{
\item{smap_matrices}{A list with the Jacobian matrix (of smap-coefficients)
at each time point, resulting from \code{\link[=compute_smap_matrices]{compute_smap_matrices()}}}

\item{s}{the number of species in the system (optional parameter to restrict
the analysis just to the portions of the Jacobian that are relevant for the
forecasts)}
}
\value{
a numeric vector of the total variance values
}
\description{
We define the total variance as the variance that results when
applying the Jacobian to a point with zero mean and unit variance. This can
be calculated as the trace of the Jacobian multiplied by its transpose. The
diagonal elements then represent the variance of each dimension, with off-
diagonal elements being the covariance.
}
\details{
See \code{\link[=compute_svd_decomp]{compute_svd_decomp()}} for details on extracting the portion of
the Jacobian used for calculating the determinant.

We do this in order to account for the low-rank of the full Jacobian, which
otherwise results in a determinant of 0.

We then compute the pseudo-determinant as Tr(J_s %*% t(J_s)).
}
