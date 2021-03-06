% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/download_kirby21_data.R
\name{download_kirby21_data}
\alias{download_kirby21_data}
\title{Download Kirby21 Imaging Data}
\usage{
download_kirby21_data(
  modality = kirby21.base::all_modalities(),
  progress = TRUE,
  force = FALSE,
  outdir = NULL
)
}
\arguments{
\item{modality}{modality of images that are to be downloaded.  You
must have the package downloaded for that modality.}

\item{progress}{Should verbose messages be printed when downloading 
the data}

\item{force}{If the package of that modality is not installed stop.  If
\code{force = FALSE}, then this will download the data but not
really install the package.}

\item{outdir}{output directory for files to download.  It will
default to the directory of the corresponding package for the data.}
}
\value{
A logical indicating the data is there.
}
\description{
This function allows users to download specific
modalities for Kirby21 data sets.  This allows this package to be 
on CRAN
}
\examples{
on_cran = !identical(Sys.getenv("NOT_CRAN"), "true")
on_ci <- nzchar(Sys.getenv("CI"))
local_run = grepl("musch", tolower(Sys.info()[["user"]]))
run_example = !on_cran || on_ci || local_run
if (run_example) {
outdir = tempdir()
res = download_kirby21_data("SURVEY", outdir = outdir)
}
}
