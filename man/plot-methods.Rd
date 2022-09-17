\name{plot-methods}
\alias{plot}
\alias{plot,flexmix,missing-method}
\alias{plot,FLXRoptim,missing-method}
\alias{plot,stepFlexmix,missing-method}
\alias{plot,TLE,missing-method}
\title{ Plot method for TLE-class objects. }
\description{
  This is the \code{plot} function for TLE objects. It calls the plot function
  of the estimate object that is returend by \code{estimate}}
\usage{
\S4method{plot}{TLE,missing}(x, y=NULL,...)
}
\arguments{
  \item{x}{Object of class TLE.}
  \item{y}{NULL}
  \item{...}{ Additional plot parameters. }
}

\author{P. Neytchev, P. Filzmoser, R. Patnaik, A. Eisl and R. Boubela, \email{P.Filzmoser@tuwien.ac.at}}

\seealso{ \code{\link{TLE}} }

\keyword{models}
