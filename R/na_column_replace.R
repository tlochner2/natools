#' Replace NAs in Column Function
#'
#' This function allows you to replace NA values in any columns with a specified value
#' @param df The dataframe for which NA values will be replaced.
#' @param replacements The column name and value you wish to replace NAs with i.e. col1 = 0.
#' @return A data frame with NA values replaced in specified columns
#' @examples
#' df <- data.frame(a = c(1, 2, NA),
#'                  b = c(NA, 5, 6),
#'                  c = c(7, NA, 9))
#' na_column_replace(df, c(a = 3, b = 4, c = 8))
#'
#' @export


na_column_replace <- function(df, replacements) {
  for (col in names(replacements)) {
    if (col %in% names(df)) {
      df[[col]][is.na(df[[col]])] <- replacements[[col]]
    }
  }
  return(df)
}
