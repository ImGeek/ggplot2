\name{stat_summary_hex}
\alias{stat_summary_hex}
\title{Apply funciton for 2D hexagonal bins.}
\usage{
  stat_summary_hex(mapping = NULL, data = NULL,
    geom = "hex", position = "identity", bins = 30,
    drop = TRUE, fun = mean, ...)
}
\arguments{
  \item{bins}{see \code{\link{stat_binhex}}}

  \item{drop}{drop if the output of \code{fun} is
  \code{NA}.}

  \item{fun}{function for summary.}

  \item{...}{parameters passed to \code{fun}}
}
\description{
  Apply function for 2D hexagonal bins.
}
\details{
  \code{stat_summary2d} is hexagonal version of
  \code{\link{stat_summary}}. The data are devided by
  \code{x} and \code{y}. \code{z} in each cell is passed to
  arbitral summary function.

  \code{stat_summary-hex} requires the following
  aesthetics:

  \itemize{ \item \code{x}: horizontal position \item
  \code{y}: vertical position \item \code{z}: value passed
  to the summary function }
}
\examples{
d <- ggplot(diamonds, aes(carat, depth, z = price))
d + stat_summary_hex()

# Specifying function
d + stat_summary_hex(fun = function(x) sum(x^2))
d + stat_summary_hex(fun = var, na.rm = T)
}
\seealso{
  \code{\link{stat_summary2d}} for rectangular
  summarization. \code{\link{stat_bin2d}} for the
  hexagon-ing options.
}
