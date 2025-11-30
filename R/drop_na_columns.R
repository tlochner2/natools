#' Drop columns with too many missing values
#'
#' This function removes columns from the input data frame if the percentage of
#' missing values in that column exceeds the input threshold.
#'
#' @param df A data frame
#' @param threshold descriptionA numeric value between 0 and 100 that sets the
#' maximum allowed percentage of missing values. Columns that have a higher
#' percentage of missing values will be dropped.
#'
#' @return A data frame with columns dropped if they exceed the threshold
#' @examples
#' df <- data.frame(a = c(1, NA, 3),
#'                  b = c(NA, NA, NA),
#'                  c = c(2, 4, NA))
#' drop_na_columns(df, threshold = 50)
#'
#' @export


drop_na_columns <- function(df, threshold = 50) {
  n <- nrow(df)
  counts <- sapply(df, function(x) sum(is.na(x)))
  pct <- counts / n * 100

  keep_cols <- names(df)[pct <= threshold]
  df[, keep_cols, drop = FALSE]
}
