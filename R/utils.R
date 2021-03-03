#' AND infix operator
#' 
#' Given x and y, return y only if both x and y are set
#' 
#' @param x left operand
#' @param y right operand
#' @noRd 
`%AND%` <- function(x, y) {
  if (!is.null(x) && !isTRUE(is.na(x)))
    if (!is.null(y) && !isTRUE(is.na(y)))
      return(y)
  return(NULL)
}