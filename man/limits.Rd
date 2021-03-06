\name{limits}
\alias{limits}
\title{Generate correct scale type for specified limits}
\usage{
limits(lims, var)
}
\arguments{
  \item{limts}{vector of limits}

  \item{var}{name of variable}
}
\description{
Generate correct scale type for specified limits
}
\examples{
ggplot2:::limits(c(1, 5), "x")
ggplot2:::limits(c(5, 1), "x")
ggplot2:::limits(c("A", "b", "c"), "x")
ggplot2:::limits(c("A", "b", "c"), "fill")
ggplot2:::limits(as.Date(c("2008-01-01", "2009-01-01")), "x")
}
\keyword{internal}

