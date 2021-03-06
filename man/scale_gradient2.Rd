\name{scale_colour_gradient2}
\alias{scale_color_gradient2}
\alias{scale_colour_gradient2}
\alias{scale_fill_gradient2}
\title{Diverging colour gradient}
\usage{
scale_colour_gradient2(..., low = muted("red"), mid = "white",
  high = muted("blue"), midpoint = 0, space = "rgb",
  na.value = "grey50", guide = "colourbar")

scale_fill_gradient2(..., low = muted("red"), mid = "white",
  high = muted("blue"), midpoint = 0, space = "rgb",
  na.value = "grey50", guide = "colourbar")

scale_color_gradient2(..., low = muted("red"), mid = "white",
  high = muted("blue"), midpoint = 0, space = "rgb",
  na.value = "grey50", guide = "colourbar")
}
\arguments{
  \item{midpoint}{The midpoint (in data value) of the
  diverging scale.  Defaults to 0.}

  \item{guide}{Type of legend. Use \code{"colourbar"} for
  continuous colour bar, or \code{"legend"} for discrete
  colour legend.}

  \item{...}{Other arguments passed on to
  \code{\link{discrete_scale}} to control name, limits,
  breaks, labels and so forth.}

  \item{na.value}{Colour to use for missing values}

  \item{low}{colour for low end of gradient.}

  \item{mid}{colour for mid point}

  \item{high}{colour for high end of gradient.}

  \item{space}{colour space in which to calculate gradient.
  "Lab" usually best unless gradient goes through white.}
}
\description{
Diverging colour gradient
}
\examples{
\donttest{
dsub <- subset(diamonds, x > 5 & x < 6 & y > 5 & y < 6)
dsub$diff <- with(dsub, sqrt(abs(x-y))* sign(x-y))
(d <- qplot(x, y, data=dsub, colour=diff))

d + scale_colour_gradient2()
# Change scale name
d + scale_colour_gradient2(expression(sqrt(abs(x - y))))
d + scale_colour_gradient2("Difference\\nbetween\\nwidth and\\nheight")

# Change limits and colours
d + scale_colour_gradient2(limits=c(-0.2, 0.2))

# Using "muted" colours makes for pleasant graphics
# (and they have better perceptual properties too)
library(scales) # for muted
d + scale_colour_gradient2(low="red", high="blue")
d + scale_colour_gradient2(low=muted("red"), high=muted("blue"))

# Using the Lab colour space also improves perceptual properties
# at the price of slightly slower operation
d + scale_colour_gradient2(space="Lab")

# About 5\% of males are red-green colour blind, so it's a good
# idea to avoid that combination
d + scale_colour_gradient2(high=muted("green"))

# We can also make the middle stand out
d + scale_colour_gradient2(mid=muted("green"), high="white", low="white")

# or use a non zero mid point
(d <- qplot(carat, price, data=diamonds, colour=price/carat))
d + scale_colour_gradient2(midpoint=mean(diamonds$price / diamonds$carat))

# Fill gradients work much the same way
p <- qplot(letters[1:5], 1:5, fill= c(-3, 3, 5, 2, -2), geom="bar")
p + scale_fill_gradient2("fill")
# Note how positive and negative values of the same magnitude
# have similar intensity
}
}
\seealso{
Other colour scales: \code{\link{scale_color_brewer}},
\code{\link{scale_colour_brewer}},
\code{\link{scale_fill_brewer}};
\code{\link{scale_color_continuous}},
\code{\link{scale_color_gradient}},
\code{\link{scale_colour_continuous}},
\code{\link{scale_colour_gradient}},
\code{\link{scale_fill_continuous}},
\code{\link{scale_fill_gradient}};
\code{\link{scale_color_discrete}},
\code{\link{scale_color_hue}},
\code{\link{scale_colour_discrete}},
\code{\link{scale_colour_hue}},
\code{\link{scale_fill_discrete}},
\code{\link{scale_fill_hue}};
\code{\link{scale_color_gradientn}},
\code{\link{scale_colour_gradientn}},
\code{\link{scale_fill_gradientn}};
\code{\link{scale_color_grey}},
\code{\link{scale_colour_grey}},
\code{\link{scale_fill_grey}}
}

