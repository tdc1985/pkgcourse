#' statSummary
#'
#' @param x a \code{numeric} vector for summarising
#' @param na.rm a \code{logical} value stating whether to remove \code{NA}
#'     values; defaults to \code{TRUE} - remove \code{NA}s
#'
#' @return Returns a vector of summary statistics for \code{x}:
#'\describe{
#' \item{Min}{Minimum value of data}
#' \item{Mean}{Mean of the data}
#' }
#'
#' @author Tony Carter <tdcarter1985@@gmail.com>
#' @export
#'
#' @examples
statSummary <- function(x, na.rm = TRUE) {
  if (!is.numeric(x)) {
    stop("You must provide a numeric vector", call. = FALSE)
  }

  if (!is.logical(na.rm)) {
    warning("na.rm should be logical. na.rm set to default TRUE")
    na.rm = TRUE
  }
  xMean <- mean(x, na.rm = na.rm)
  xVar <- var(x, na.rm = na.rm)
  xRange <- range(x, na.rm = na.rm)

  c("Min" = xRange[1],
    "Mean" = xMean,
    "Variance" = xVar,
    "Max" = xRange[2])

}
