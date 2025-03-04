% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/applySimulatePanel.R
\name{applySimulatePanel}
\alias{applySimulatePanel}
\title{Downsample a whole exome sequencing (WES) dataset to a subset only containing
genes targeted in the panel}
\usage{
applySimulatePanel(WES, WES.design, panel.design, assembly)
}
\arguments{
\item{WES}{a list generated by applyFilters or applyInputToTMB with variants,
filter, design and sample elements.}

\item{WES.design}{a \code{GRanges} object containing WES sequencing design. 
Used to remove off target mutations}

\item{panel.design}{a \code{GRanges} object containing sequencing design of
the panel tyou want to simuate. Used to subset WES.}

\item{assembly}{human genome assembly: "hg19" or "hg38"}
}
\value{
Returns a list of lists (one for each element of the input list). Each
list contains variants, filter, design and sample elements. The variants element 
is a \code{GRanges} object containing variants from the simulated panel, which
is only those variants from WES falling in the regions targeted by the panel
}
\description{
This function calls the simulatePanel function on a list of inputs and for 
each element of the list it generates a subset of a whole exome sequencing 
dataset which only includes the genes of a given gene panel. This subset may 
then be used to simulate panel-based TMB quantification.
}
\examples{

## Read design
# Load the design of the WES
data(ExampleWESdesign)

# Load the design of the gene panel that you want to simulate
data(ExamplePaneldesign)

# Load input to applySimulatePanel function
data(vcfs_NoCancer_ForPanel)

# Subset WES dataset, provided as GRanges object so that it will only contain
# variants in the regions targeted by the panel you want to simulate
SimulatedPanel_NoCancer <- applySimulatePanel(WES = vcfs_NoCancer_ForPanel
, WES.design = ExampleWESdesign
, panel.design= ExamplePaneldesign 
, assembly = "hg19")

}
\author{
Laura Fancello
}
