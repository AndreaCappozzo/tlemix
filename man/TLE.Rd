\name{TLE}
\alias{TLE}
\alias{TLE,data.frame,ANY,ANY,ANY,ANY,ANY,ANY,ANY,numeric,function,function-method}
\alias{TLE,formula,character,ANY,ANY,ANY,ANY,ANY,ANY,ANY,ANY,numeric,function,function-method}
\title{ Trimmed Likelihood Estimator }
\description{
  TLE implements a general framework for robust fitting
   of finite mixture models. Parameter estimation is performed 
   using the EM algorithm.

   Currently two model drivers are inluded: flexmix.Density
   (flexmix.Enstimate) for gaussian, poisson and binomial regression models
   and FLXmclust.Density (FLXmclust.Estimate) for model based clustering.
}
\usage{
	TLE(formula,family,data,kStar=NULL, kTrim=NULL, nit = 10, msglvl = 0, 
        result = NULL, cit = 9, test = NULL,nc=1, Density, Estimate, ...)
}
\arguments{
  \item{formula}{An object of class formula.}
  \item{family}{The family to be used.}
  \item{data}{ Data frame containing the x and y variables with an optional attribute \code{family} being either \code{gaussian},\code{poisson} or \code{binomial} }
  \item{kStar}{ k*- size of the initial random subsample }
  \item{kTrim}{ Trimming parameter: size of the C-steps random subsample }
  \item{nit}{ Number of iterations }
  \item{msglvl}{ Level of messages }
  \item{result}{ Restart/continuation information }
  \item{cit}{ Number of iterations in refinement step }
  \item{test}{ Expected true loglikelihood of the model; procedure will be stopped if reached. }
  \item{nc}{ Number of components. }
  \item{Density}{ Density function of type - function(data,solution,model,family,...) }
  \item{Estimate}{ Specific estimation procedure interface: function(data,ind,model,family,...) }
  \item{\dots}{ Arguments to be passed to methods \code{Estimate} and \code{Density} }
}

\value{
  Returns an object of class \code{TLE}.
}
\references{ 
N. Neykov, P. Filzmoser, R. Dimova, and P. Neytchev. Robust fitting of mixtures using the trimmed likelihood estimator. 
Computational Statistics and Data Analysis, Vol. 17(3), pp. 299-308, 2007. 
}
\author{P. Neytchev, P. Filzmoser, R. Patnaik, A. Eisl and R. Boubela, \email{P.Filzmoser@tuwien.ac.at}}
\seealso{ \code{\link[flexmix]{flexmix}} }
\examples{
data(gaussData)

\dontrun{
    ## This example takes some seconds:
    est.tle	<- TLE(y~x,"gaussian",data=gaussData,nit=4, msglvl=1, cit=3, 
               Density=flexmix.Density, Estimate=flexmix.Estimate, nc=2)
    
    # Plot the 2-dimensional data			
    tleplot(est.tle, gaussData)
}
}
\keyword{ robust }
\keyword{ regression }
\keyword{ cluster }
\keyword{ multivariate }
\keyword{ models }
