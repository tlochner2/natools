#' Summarize missing values in a data frame
#'
#' This function provides summary details of missing values in every column of a
#' data frame. This includes, count of missing values, percentages, data types,
#' and whether the column is entirely missing.
#'
#' @param df A data frame
#'
#' @return A data frame with columns:
#'  - column: column name
#'  - missing_count: number of NA values
#'  - missing_pct: percentage of NA values
#'  - type: data type of the column
#'  - all_missing: Logical for if the whole column is NA
#'
#' @examples
#' df <- data.frame(a = c(1, NA, 3),
#'                  b = c("x", NA, "z"),
#'                  c = c(NA, NA, NA))
#' na_summary(df)
#'
#' @export

na_summary <- function(df) {
  n <- nrow(df)
  counts <- sapply(df, function(x) sum(is.na(x)))
  pct <- counts / n * 100
  types <- sapply(df, function(x) class(x)[1])
  all_missing <- counts == n

  colnames_df <- if (!is.null(names(df))) names(df) else paste0("V", seq_along(df))

  result <- data.frame(
    column = colnames_df,
    missing_count = counts,
    missing_pct = pct,
    type = types,
    all_missing = all_missing,
    row.names = NULL
  )

  return(result)
}
