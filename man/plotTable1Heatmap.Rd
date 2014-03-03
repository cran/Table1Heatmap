\name{plotTable1Heatmap}
\alias{plotTable1Heatmap}
\title{plotTable1Heatmap}
\usage{
plotTable1Heatmap(factorList, method = c("AssociationByP", "CrosstableByP",
  "CrosstableByN")[1], drawRaster = NULL, ...)
}
\arguments{
  \item{factorList}{named list with clinical variables
  coded as factors}

  \item{method}{'AssociationByP' : draw a heatmap with
  p-values of the association between parameters and a
  direction of effect if a Fisher Exact test was performed.
  'CrosstableByP' : draw a heatmap with p-values of the
  association between parameters and show the crosstables
  'CrosstableByN' : draw a heatmap with percentage of
  patients in the cell of a crosstable and show the
  crosstables}

  \item{drawRaster}{draw horizontal and vertical lines
  marking characteristics}

  \item{...}{plotting parameters for image}
}
\description{
Plot a heatmap of table 1, either by plotting p values, n
of patients colored by p-values or n of patients colored by
percentage of total patients
}
\examples{
lst <- list(a=sample(c(TRUE,FALSE), 10, replace=TRUE), b=sample(c(TRUE,FALSE), 10, replace=TRUE),
c=sample(c(TRUE,FALSE), 10, replace=TRUE))
lst <- lapply(lst, as.factor)

dev.new(height=10, width=10)

plotTable1Heatmap(factorList=lst, method='AssociationByP', drawRaster=TRUE)

plotTable1Heatmap(factorList=lst, method='CrosstableByP', drawRaster=TRUE)

plotTable1Heatmap(factorList=lst, method='CrosstableByN', drawRaster=TRUE)
}

