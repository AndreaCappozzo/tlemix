\name{flexmix.Estimate}
\alias{flexmix.Estimate}
\title{ Flexible Mixture Estimation }
\description{
  TLE - flexmix gaussian, poisson & binomial model driver. Calculates
  the density function according to current parameter estimates.
}
\usage{
flexmix.Estimate(data, ind = NULL, nc, class = "hard", cluster = NULL, 
        niter = 200, minprior = 0.1, model,family,ntry=9)
}
\arguments{
  \item{data}{ A\code{model.frame} containing the data.  }
  \item{ind}{ Data subset }
  \item{nc}{ Number of clusters }
  \item{class}{ Classification method used: \code{auto}, \code{weighted}, \code{hard} or \code{random} }
  \item{cluster}{optional vector of working class memberships}
  \item{niter}{Number of iterations }
  \item{minprior}{Minimum number of observations per component}
  \item{model}{The model}
  \item{family}{The model family}
  \item{ntry}{Number of trials}
}
\value{
  Returns flexmix class estimate.
}
\author{P. Neytchev, P. Filzmoser, R. Patnaik, A. Eisl and R. Boubela}
\seealso{ \code{\link[flexmix]{flexmix}} }
\keyword{ multivariate }
\keyword{ models }
