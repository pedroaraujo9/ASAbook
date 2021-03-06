% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/example_functions.R
\name{vmr}
\alias{vmr}
\title{Remaining life
Remaining life estatimative of Kaplan-Meier survival function}
\usage{
vmr(fit, t)
}
\arguments{
\item{fit}{survfit object.}

\item{t}{numeric vector with times}
}
\value{
numeric vector with remaining life
}
\description{
Remaining life
Remaining life estatimative of Kaplan-Meier survival function
}
\examples{
data('leucemia')
fitl = survfit(Surv(tempos, cens) ~ 1, data = leucemia)
vmr(fitl, t = 4)
}
\author{
Pedro Araujo
}
