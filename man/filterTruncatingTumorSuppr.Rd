% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/filterTruncatingTumorSuppr.R
\name{filterTruncatingTumorSuppr}
\alias{filterTruncatingTumorSuppr}
\title{Filter truncating variants in tumor suppressors}
\usage{
filterTruncatingTumorSuppr(vcf, assembly, tsList)
}
\arguments{
\item{vcf}{\code{CollapsedVCF} object containing variants}

\item{assembly}{human genome assembly: hg19 or hg38}

\item{tsList}{path to file containg list of tumor suppressors. If not
provided a list of 1217 tumor suppressors from the TSgene2 database
(<https://bioinfo.uth.edu/TSGene/>) is used.}
}
\value{
Returns a \code{data.frame} object with those variants which do not
represent truncating mutations in tumor suppressors
}
\description{
This function removes from the input vcf truncating variants in tumor
suppressor genes
}
\author{
Laura Fancello
}
