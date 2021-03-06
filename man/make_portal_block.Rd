% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data-portal.R
\name{make_portal_block}
\alias{make_portal_block}
\title{Get a data.frame of Portal rodent abundances}
\usage{
make_portal_block(path = portalr::get_default_data_path(),
  filter_q = NULL, output = "abundance", plots = c(2, 4, 8, 11, 12,
  14, 17, 22), ...)
}
\arguments{
\item{path}{either the file path that contains the PortalData folder or
"repo", which then pulls data from the PortalData GitHub repository}

\item{filter_q}{the numerical quantile by which to filter species. Only
species that are present at least \code{filter_q} fraction of the time are
included; default (NULL) keeps all species.}

\item{output}{specify whether to return "abundance", or "biomass", or
"energy"}

\item{plots}{specify subset of plots; can be a vector of plots, or specific
sets: "all" plots or "Longterm" plots (plots that have had the same
treatment for the entire time series)}

\item{...}{arguments passed to \code{\link{summarize_rodent_data}}}
}
\value{
a data.frame with columns for \code{censusdate}, and each species
}
\description{
Create a data.frame from the Portal rodent data with specified
arguments, each row corresponds to a newmmoonnumber, and missing data are
interpolated.
}
