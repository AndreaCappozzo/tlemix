\name{TLE-class}
\docType{class}
\alias{TLE-class}
\alias{show,TLE-method}
\alias{summary,TLE-method}
\alias{tleplot,TLE,data.frame-method}

\title{Class "TLE"}
\description{ Class for TLE results.}
\section{Slots}{
	 \describe{
    \item{\code{estimate}:}{Estimate object. Class is determined by the estimation procedure used. }
    \item{\code{iterbest}:}{Iteration with best result. }
    \item{\code{it}:}{Number of iterations done. }
    \item{\code{maxloglik}:}{Maximum loglikelihood. }
    \item{\code{indbest}:}{Index of observations used during the final iteration.}
    \item{\code{indout}:}{Index of the outliers. }
    \item{\code{tleweights}:}{ Matrix of weights. - Besprechen }
    \item{\code{tlelogliks}:}{ besprechen. }
    \item{\code{tleclusters}:}{ besprechen. }
    \item{\code{kTrim}:}{ Number of observations used. }
    \item{\code{kStar}:}{ Size of the initial random subsample. }
    \item{\code{mcomp}:}{ Number of components. }
    \item{\code{nobs}:}{ Number of observations. }
    \item{\code{stop}:}{ The expected loklikelihood of known model (used for testing). }
    \item{\code{call}:}{ Call of the function. }
  }
}
\section{Methods}{
  \describe{
    \item{show}{ Prints TLE object. }
    \item{summary}{ Generates a summary of a TLE object.}
    \item{tleplot}{ Plots a two-dimensional scatterplot with clusters and outliers marked by colors. }
	 }
}
\references{ N. Neykov, P. Filzmoser, R. Dimova, and P. Neytchev. 
	Robust fitting of mixtures using the trimmed likelihood estimator.
	Computational Statistics and Data Analysis, Vol. 17(3), pp. 299-308, 2007. }
\author{P. Neytchev, P. Filzmoser, R. Patnaik, A. Eisl and R. Boubela, \email{P.Filzmoser@tuwien.ac.at}}

\keyword{classes}
