#' Extract rows from a data frame that contain NA values
#'
#' This function takes a data frame as input and subsets it so only rows that have
#' NA values are returned.
#'
#' @param df A data frame
#'
#' @return A data frame that contains only the rows from the input data frame that
#' contained NA values.
#'
#' @examples
#' df <- data.frame(a = c(1, NA, 3),
#'                  b = c("x", NA, "z"),
#'                  c = c(NA, NA, 5))
#' extract_na(df)
#'
#' @export


extract_na <- function(df) {
  rows_with_na <- apply(is.na(df), 1, any)
  df[rows_with_na, , drop = FALSE]
}
