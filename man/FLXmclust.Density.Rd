\name{FLXmclust.Density}
\alias{FLXmclust.Density}

\title{ Model driver for flexmix }
\description{
  Density function according to current parameter estimate
}
\usage{
FLXmclust.Density(data, estim,model,...)
}
\arguments{
  \item{data}{ Model data, expected to be model.frame with family attribute }
  \item{estim}{ Model estimate }
  \item{model}{The model used}
  \item{...}{Any other arguments}
}
\value{
  \item{ll}{Log-likelihood}
  \item{lc}{Log-likelihood by cluster}
  \item{c}{Cluster}
  \item{cc}{Cluster as matrix.}
  \item{lik}{Log-likelihood.}
}

\seealso{ \code{\link[flexmix]{flexmix}} }
\author{P. Neytchev, P. Filzmoser, R. Patnaik, A. Eisl and R. Boubela, \email{P.Filzmoser@tuwien.ac.at}}

\keyword{ multivariate }
\keyword{ cluster }
