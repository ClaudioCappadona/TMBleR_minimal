% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/removeCancerVariants.R
\name{removeCancerVariants}
\alias{removeCancerVariants}
\title{Remove cancer variants}
\usage{
removeCancerVariants(vcf, assembly, tsList)
}
\arguments{
\item{vcf}{a \code{CollapsedVCF} object containing variants}

\item{assembly}{human genome assembly: hg19 or hg38}

\item{tsList}{path to file containg list of tumor suppressors. If not
provided a list of 1217 tumor suppressors from the TSgene2 database
 is used.}
}
\value{
Returns a \code{data.frame} object containing only those variants
which passed the filter
}
\description{
This function removes from the vcf dataset those variants defined as pathogenic
 (cancer) in COSMIC or truncating variants in tumor suppressor genes.
}
\author{
Laura Fancello
}
