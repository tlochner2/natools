#' Check missing values in a data frame
#'
#' This function takes in a data frame and returns a one-row data frame with each
#' column corresponding to the same column in the input data frame, and the values
#' are the number of NA values.
#'
#' @param df A data frame
#'
#' @return A one-row data frame with the count of missing values in each column
#' @examples
#' df <- data.frame(a = c(1, NA, 3),
#'                  b = c("x", NA, "z"),
#'                  c = c(NA, NA, 5))
#' missing_check(df)
#'
#' @export



missing_check <- function(df){
  counts <- sapply(df, function(x) sum(is.na(x)))
  result <- as.data.frame(t(counts), row.names = "NAs")
  return(result)
  print(result)
}
