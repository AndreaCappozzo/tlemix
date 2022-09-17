\name{coefglm}
\alias{coefglm}
\title{coefglm}
\description{
	Used by TLE-flexmix guassian, poisson & binomial model
	(FLXglm.Estimate) driver to get model coefficients.
}
\usage{
coefglm(nmix, family)
}
\arguments{
  \item{nmix}{ flexmix model }
  \item{family}{ family, can be "gaussian", "poisson" or "binomial" }
}
\value{
	List of model coefficients.
}

\author{P. Neytchev, P. Filzmoser, R. Patnaik, A. Eisl and R. Boubela, \email{P.Filzmoser@tuwien.ac.at}}
\note{ 
       This function is only used internally.
}
\seealso{ \code{\link{TLE}} }

\keyword{ models }
\keyword{ regression }
\keyword{ multivariate }
