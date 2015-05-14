\name{rsem.lavaan}
\alias{rsem.lavaan}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Conduct robust SEM analysis using lavaan
}
\description{
Conduct robust SEM analysis using lavaan
}
\usage{
rsem.lavaan(dset, model, select,  varphi=.1, max.it=1000)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dset}{
A data matrix or a data frame
}
  \item{select}{
Variables to be seleted for SEM analysis. If omitted, all variables in the data set will be used.
}
  \item{model}{
The model using lavaan syntax
}
  \item{varphi}{
  Proportion of data to be down-weighted. Default is 0.1.
}
  \item{max.it}{Maximum number of iterations for EM. Default is 1000}
}
\details{
This function will run the robust analysis and output results.
}

\references{
Yuan, K.-H., & Zhang, Z. (2012). Robust Structural Equation Modeling with Missing Data and Auxiliary Variables. Psychometrika, 77(4), 803-826.
}
\author{
Ke-Hai Yuan and Zhiyong Zhang
}

\seealso{
\code{\link{rsem.pattern}}, \code{\link{rsem.emmusig}}, \code{\link{rsem.Ascov}} 
}
\examples{

 data(mardiamv25)
 names(mardiamv25)<-paste('V', 1:5, sep='')
 
 fa.model<-'f1 =~ V1 + V2
f2 =~ V4 + V5 
f1 ~ 1
f2 ~ 1
V1 ~0*1
V2 ~0*1
V4 ~0*1
V5 ~0*1'

 analysis<-rsem.lavaan(mardiamv25, fa.model, c(1,2,4,5))
}
