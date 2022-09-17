\name{summary}
\alias{summary}
\title{ Summary method for TLE-class objects. }
\description{
  This is the \code{summary} function for TLE objects. It extends
  the summary functions of the estimate object's class by adding
  TLE specific results.
}
\usage{
	summary(object, ...)
}
\arguments{
  \item{object}{ Object of class TLE }
  \item{...}{Additional arguments for summary method of the estimate object.}
}
\details{
  The following list shows the parameters and results that are added
  to the estimate object's summary function.
\itemize{
  \item{kTrim}{Trimming parameter.}
  \item{nobs}{Number of observations.}
  \item{nout}{Number of outliers.}
}
}
\value{
  \item{summary}{Object of class summary.TLE}
}
\author{P. Neytchev, P. Filzmoser, R. Patnaik, A. Eisl and R. Boubela, \email{P.Filzmoser@tuwien.ac.at}}

\keyword{models}
