\name{tleplot}
\alias{tleplot}
\alias{tleplot,TLE-function}
\title{ 2D Scatterplot with cluster membership indications }
\description{
  The \code{tleplot} method for \code{\link{TLE-class}} objects gives a 
  scatterplot of 2-dimensional mixture data after a trimmed likelihood estimation was performed.
}
\usage{
tleplot(object, data, ...)
}
\arguments{
  \item{object}{ object of class TLE (\code{\link{TLE-class}}) }
  \item{data}{ 2-dimensional data frame }
  \item{\dots}{ further graphical parameters for the \code{\link{plot}} function }
}
\details{
  A 2-dimensional data frame is represented as a scatterplot. 
  For each cluster identified by the method \code{\link{TLE}} 
  a different colour is used for indication purposes. Outliers are depicted as black triangles.
}
\author{P. Neytchev, P. Filzmoser, R. Patnaik, A. Eisl and R. Boubela, \email{P.Filzmoser@tuwien.ac.at}}
\seealso{ \code{\link{TLE}} }
\keyword{ cluster }
\keyword{ regression }
\keyword{ models }
