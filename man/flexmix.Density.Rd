\name{flexmix.Density}
\alias{flexmix.Density}
\title{ Model driver for flexmix }
\description{
  Density function according to current parameter estimate
}
\usage{
	flexmix.Density(data, pars,model,family)
}
\arguments{
  \item{data}{Model data, expected to be model.frame with family attribute}
  \item{pars}{Model estimate }
  \item{model}{The model}
  \item{family}{The model family}
}
\value{
  \item{ll}{Log-likelihood}
  \item{c}{Cluster}
  \item{cc}{Cluster as matrix}
  \item{lik}{Log-likelihood}
}

\author{P. Neytchev, P. Filzmoser, R. Patnaik, A. Eisl and R. Boubela, \email{P.Filzmoser@tuwien.ac.at}}
\seealso{ \code{\link[flexmix]{flexmix}} }
\keyword{ multivariate }
\keyword{ models }
