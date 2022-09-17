\name{summary.TLE-class}
\docType{class}
\alias{summary.TLE-class}
\alias{show,summary.TLE-method}

\title{Class "summary.TLE" }
\description{ Class for summary objects for TLE. }
\section{Objects from the Class}{
	Objects can be created by calls of the form \code{new("summary.TLE", ...)}.
}
\section{Slots}{
	 \describe{
    \item{\code{call}:}{ Call of the function. }
    \item{\code{estimate}:}{ Estimate object. Class is determined by the estimation procedure used. }
    \item{\code{kTrim}:}{ Number of observations used. }
    \item{\code{kStar}:}{ Size of the initial random subsample. }
    \item{\code{maxloglik}:}{ Maximum log likelihood. }
    \item{\code{nobs}:}{ Number of observations. }
    \item{\code{nout}:}{ Number of outliers. }
  }
}
\section{Methods}{
  \describe{
    \item{show}{\code{signature(object = "summary.TLE")}: ... }
	 }
}
\author{P. Neytchev, P. Filzmoser, R. Patnaik, A. Eisl and R. Boubela, \email{P.Filzmoser@tuwien.ac.at}}

\keyword{classes}
