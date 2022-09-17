\name{McLachlan150}
\alias{McLachlan150}
\docType{data}
\title{ Mixture of two standard normal distributions }
\description{
  This simulated data set are discussed by McLachlan and
  Peel (2000). The data consists of 100 observations generated from a
  3-component bivariate normal mixture model with equal mixing proportions.
 Fifty outliers, generated from a uniform distribution over the range  -10
  to  10  on each variate are added to the original data.
 Thus a sample of 150 observations is obtained.
}
\usage{data(McLachlan150)}
\format{
  A data frame with 100 observations on the following 3 variables.
  \describe{
    \item{\code{x}}{a numeric vector of x-coordinates}
    \item{\code{y}}{a numeric vector of y-coordinates}
    \item{\code{c}}{a numeric vector of cluster memberships}
  }
}
\references{
  McLachlan, G.J. and Peel, D. (2000).  Finite mixture models. Wiley, New
  York.
}
\author{P. Neytchev, P. Filzmoser, R. Patnaik, A. Eisl and R. Boubela, \email{P.Filzmoser@tuwien.ac.at}}

\examples{
data(McLachlan150)
str(McLachlan150)

\dontrun{
    ## Example needs some computing time:
    d <- as.matrix(McLachlan150[,1:2])
    est.tle <- TLE(d~1,"mvtnormal",data=d,Density=FLXmclust.Density,
               Estimate=FLXmclust.Estimate,msglvl=1,nc=3,class="hard")
    tleplot(est.tle,as.data.frame(d),main="TLE Scatter Plot")
}
}
\keyword{ datasets }
