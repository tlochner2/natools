#' Create a tilemap highlighting missing values
#'
#' This function creates a tilemap that shows missing values of a dataframe by
#' column and with the location of the row.
#'
#' @param df A dataframe
#' @param main_title A character string giving the plot a title
#'
#' @return A ggplot object representing the missingness tile map.
#'
#' @examples
#' #Using built-in airquality dataset
#' data("airquality")
#' missing_tilemap(airquality)
#'
#' @import ggplot2 reshape2
#' @export

missing_tilemap <- function(df, main_title = "Missingness Tile Map") {
  miss_matrix <- is.na(df) * 1

  melted <- reshape2::melt(miss_matrix)

  p <- ggplot2::ggplot(melted, ggplot2::aes(x = Var2, y = Var1, fill = factor(value))) +
    ggplot2::geom_tile(color = "grey90") +
    ggplot2::scale_fill_manual(values = c("0" = "white", "1" = "red"),
                               labels = c("Present", "Missing"),
                               name = "Status") +
    ggplot2::labs(x = "Variables", y = "Observations", title = main_title) +
    ggplot2::theme_minimal() +
    ggplot2::theme(axis.text.y = ggplot2::element_blank(),
                   axis.ticks.y = ggplot2::element_blank(),
                   panel.grid = ggplot2::element_blank())

  return(p)
}
