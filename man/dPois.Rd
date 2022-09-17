\name{dPois}
\alias{dPois}
\docType{data}
\title{ Mixture two Poisson Regression Models }
\description{
  In this data set we consider two Poisson regression
  models with equal mixing proportions and with additional noise.
  For each Poisson regression model 100 data points
  are generated according to a Poisson distribution.  
  For the noise we generated 50 points from a uniform distribution over the
  range of each variate.
}
\usage{data(dPois)}
\format{
  A data frame with 150 observations on the following 3 variables.
  \describe{
    \item{\code{y}}{A numeric vector of y-coordinates}
    \item{\code{x}}{A numeric vector of x-coordinates}
  }
}

\examples{
data(dPois)
str(dPois)

\dontrun{
# Example needs some computing time:
est.tle <- TLE(y~x,"poisson",data=dPois,Density=flexmix.Density,
           Estimate=flexmix.Estimate,msglvl=1,nc=2,kTrim=200,class="hard")
tleplot(est.tle,dPois)
}
}
\seealso{ \code{\link{TLE}} }
\author{P. Neytchev, P. Filzmoser, R. Patnaik, A. Eisl and R. Boubela, \email{P.Filzmoser@tuwien.ac.at}}
\keyword{ datasets }

