statSummary <- function(x, na.rm = TRUE){
  
  xMean <- mean(x, na.rm = na.rm)
  xVar <- var(x, na.rm = na.rm)
  xRange <- range(x, na.rm = ra.rm)
  
  c("Min" = xRange[1],
    "Mean" = xMean,
    "Variance" = xVar,
    "Max" = xRange[2])
  
}