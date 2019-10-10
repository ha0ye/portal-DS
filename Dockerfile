# base image: rocker/verse (with a specific version of R)
#   has R, RStudio, tidyverse, devtools, tex, and publishing-related packages
FROM rocker/verse:3.5.3

# required
MAINTAINER Hao Ye <lhopitalified@gmail.com>

# copy the repo contents into the docker image at `/portalDS`
COPY . /portalDS

# install the dependencies of the R package located at `/portalDS`
RUN apt-get -y update -qq \ 
  && apt-get install -y --no-install-recommends \
    libgsl0-dev \ 
  && R -e "devtools::install_dev_deps('/portalDS', dep = TRUE)"