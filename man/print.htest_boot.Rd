% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/htest_boot-class.R
\name{print.htest_boot}
\alias{print.htest_boot}
\title{Print result held in htest_boot object}
\usage{
\method{print}{htest_boot}(x, digits = getOption("digits"), prefix = "\\t",
  ...)
}
\arguments{
\item{x}{Value of class \code{'htest_boot'} as returned by
e.g., \code{nestedRanksTest}.}

\item{digits}{Number of digits or significant digits to use in output.
Similar to other \code{print} methods, this method pays attention to
the \code{"digits"} option.}

\item{prefix}{String, passed to \code{\link{print.htest}}}

\item{\dots}{Additional arguments passed to \code{print.htest}.}
}
\value{
The value of x is returned invisibly.
}
\description{
\code{print.htest_boot} prints a return value held in a list of 
class \code{'htest_boot'}, as returned by e.g., 
\code{\link{nestedRanksTest}}.  Class \code{'htest_boot'}
extends class \code{'htest'} by including group weights, the
number of bootstrap iterations, and the complete null distribution.
The latter is not printed by this function; it may be visualised with
\code{\link{plot.htest_boot}}.
}
\examples{
data(woodpecker_multiyear)
## n.iter set to 1000 to shorten completion time
res <- nestedRanksTest(Distance ~ Year | Granary, n.iter = 1000,
                       data = woodpecker_multiyear,
                       subset = Species == "agrifolia")
class(res)
print(res)

}
\seealso{
\code{\link{plot.htest_boot}} for a graphical plot of test
  results, \code{\link{print.htest}} for the print method of
  the base class, and \code{\link{nestedRanksTest}} for one test that
  returns an object of class \code{'htest_boot'}
}

