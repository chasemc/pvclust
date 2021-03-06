\name{plot.pvclust}
\alias{plot.pvclust}
\alias{text.pvclust}
\title{Draws Dendrogram with P-values for Pvclust Object}
\description{
  plot dendrogram for a \code{pvclust} object and add \eqn{p}-values for
  clusters.
}
\usage{
\method{plot}{pvclust}(x, print.pv=TRUE, print.num=TRUE, float=0.01,
     col.pv=c(2,3,8), cex.pv=0.8, font.pv=NULL, col=NULL, cex=NULL,
     font=NULL, lty=NULL, lwd=NULL, main=NULL, sub=NULL, xlab=NULL, ...)

\method{text}{pvclust}(x, col=c(2,3,8), print.num=TRUE, float=0.01, cex=NULL, font=NULL, ...)
}
\arguments{
  \item{x}{object of class \code{pvclust}, which is generated by
    function \code{pvclust}. See \code{\link{pvclust}} for details.}
  \item{print.pv}{logical flag to specify whether print \eqn{p}-values
    above the edges (clusters).}
  \item{print.num}{logical flag to specify whether print edge numbers
    below clusters.}
  \item{float}{numeric value to adjust the height of \eqn{p}-values from
  edges.}
  \item{col.pv}{numeric vector of length three to specify the colors for
    \eqn{p}-values and edge numbers. From the beginning each value
    corresponds to the color of AU values, BP values and edge numbers,
    respectively.}
  \item{cex.pv}{numeric value which specifies the size of characters for
  \eqn{p}-values and edge numbers. See \code{cex} argument for
  \code{\link[graphics]{par}}.}
  \item{font.pv}{numeric value which specifies the font of characters
    for \eqn{p}-values and edge numbers. See \code{font} argument for
    \code{\link[graphics]{par}}.}
  \item{col, cex, font}{in \code{text} function, they correspond to
    \code{col.pv}, \code{cex.pv} and \code{font.pv} in \code{plot}
    function, respectively. In \code{plot} function they are used as
    generic graphic parameters.}
  \item{lty, lwd, main, sub, xlab, ...}{
    generic graphic parameters. See \code{\link[graphics]{par}} for
    details.}
}
\details{
  This function plots a dendrogram with \eqn{p}-values for given object
  of class \code{pvclust}. AU \eqn{p}-value (printed in red color in
  default) is the abbreviation of "approximately unbiased"
  \eqn{p}-value, which is calculated by multiscale bootstrap
  resampling. BP value (printed in green color in default) is "bootstrap
  probability" value, which is less accurate than AU value as
  \eqn{p}-value. One can consider that clusters (edges) with high AU
  values (e.g. 95\%) are strongly supported by data.
}
\seealso{\code{\link{text.pvclust}}}
\references{
  Shimodaira, H. (2004)
  "Approximately unbiased tests of regions using multistep-multiscale
  bootstrap resampling",
  \emph{Annals of Statistics}, 32, 2616-2641.

  Shimodaira, H. (2002)
  "An approximately unbiased test of phylogenetic tree selection",
  \emph{Systematic Biology}, 51, 492-508.
}
\author{Ryota Suzuki \email{suzuki@ef-prime.com}}
\keyword{hplot}
