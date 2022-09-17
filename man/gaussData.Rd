\name{gaussData}
\alias{gaussData}
\docType{data}
\title{ Mixture of two standard normal distributions }
\description{
	Mixture of two standard normal distributions with outliers.
}
\usage{data(gaussData)}
\format{
  A data frame with 100 observations on the following 3 variables.
  \describe{
    \item{\code{x}}{a numeric vector of x-coordinates}
    \item{\code{y}}{a numeric vector of y-coordinates}
    \item{\code{c}}{a numeric vector of cluster memberships}
  }
}

\examples{
data(gaussData)
str(gaussData)

\dontrun{

    ## Example needs some computing time:
    
    ## estimate
    est.tle <- TLE(y~x,"gaussian",data=gaussData,Density=flexmix.Density,
               Estimate=flexmix.Estimate,msglvl=1,nc=2,class="hard")
    
    ## plot data indicating clusters
    tleplot(est.tle,gaussData,main="TLE Scatter Plot")
}

}
\author{P. Neytchev, P. Filzmoser, R. Patnaik, A. Eisl and R. Boubela, \email{P.Filzmoser@tuwien.ac.at}}

\keyword{ datasets }
