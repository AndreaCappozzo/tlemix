\name{FLXmclust.Estimate}
\alias{FLXmclust.Estimate}
\title{ Flexible Mixture Estimation }
\description{
  TLE - flexmix mclust model driver}
\usage{
	FLXmclust.Estimate(data, ind = NULL, nc, class = "hard", cluster = NULL, 
        niter = 200, minprior = 0.1, model = NULL,ntry=9,...)
}
\arguments{
  \item{data}{ A \code{model.frame} containing the data. }
  \item{ind}{ Data subset }
  \item{nc}{ Number of clusters }
  \item{class}{ Classification method used: \code{auto}, \code{weighted}, \code{hard} or \code{random} }
  \item{cluster}{ optional vector of working class memberships }
  \item{niter}{ Number of iterations }
  \item{minprior}{ Minimum number of observations per component}
  \item{model}{Model used to extract model formula}
  \item{ntry}{Number of trials}
  \item{...}{Any other arguments}
}

\value{
 Returns flexmix class estimate.
}
\author{P. Neytchev, P. Filzmoser, R. Patnaik, A. Eisl and R. Boubela, \email{P.Filzmoser@tuwien.ac.at}}
\seealso{ \code{\link[flexmix]{flexmix}} }
\keyword{ multivariate }
\keyword{ cluster }
