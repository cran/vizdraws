% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/vizdraws.R
\name{vizdraws}
\alias{vizdraws}
\title{vizdraws}
\usage{
vizdraws(
  prior = NULL,
  posterior = NULL,
  MME = 0,
  threshold = NULL,
  units = NULL,
  quantity = FALSE,
  tense = c("future", "past"),
  xlab = NULL,
  breaks = NULL,
  break_names = NULL,
  colors = NULL,
  width = NULL,
  height = NULL,
  xlim = NULL,
  font_scale = 1,
  display_mode_name = FALSE,
  title = "",
  stop_trans = FALSE,
  percentage = FALSE,
  elementId = NULL
)
}
\arguments{
\item{prior}{prior distribution or draws from it. Currently `Normal`, `uniform`, `beta`, and `gamma` are supported. This is an optional parameter but either this or posterior should be provided}

\item{posterior}{draws from the posterior distribution. This is an optional parameter but either this or prior should be provided}

\item{MME}{minimum meaningful effect. If not provided MME is set to zero}

\item{threshold}{if the probability is greater than this threshold, you would feel comfortable making a decision}

\item{units}{optional argument to specify the units of x. For example, dollars or applications}

\item{quantity}{defaults to \code{FALSE}. When set to true text will change to reflect that you are predicting a quantity rather than a treatment effect}

\item{tense}{either "future" or "past". This is the tense that it will be use in the description if quantity is set to TRUE. \code{NULL}}

\item{xlab}{defaults to \code{NULL}}

\item{breaks}{defaults to \code{NULL}}

\item{break_names}{defaults to \code{NULL}}

\item{colors}{colors for the left, middle, and right areas. The defaults are c("#e41a1c", "#377eb8", "#4daf4a")}

\item{width}{width for shiny}

\item{height}{height for shiny}

\item{xlim}{defaults to \code{NULL}}

\item{font_scale}{defaults to \code{1}}

\item{display_mode_name}{defaults to \code{FALSE}}

\item{title}{defaults to \code{''}}

\item{stop_trans}{defaults to \code{FALSE}. When set to true, initial transition stops at posterior density.}

\item{percentage}{defaults to \code{FALSE}. When set to true, the x axis tick format will be set to percentage.}

\item{elementId}{Use an explicit element ID for the widget
(rather than an automatically generated one).elementID for shiny}
}
\value{
A HTML widget object
}
\description{
vizdraws
}
\examples{
if(interactive()){
set.seed(9782)
library(vizdraws)
vizdraws(prior= rnorm(100000))
 }
}
