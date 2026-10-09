#' Trumpets
#'
#' @param data
#' This is the title of the data frame which you want to work in
#' @param column_name
#' This is the name of column that you want to create a separate column for its order identification
#'
#' @returns
#'This returns a data frame that more rearranges the objects based on the desired column as well as includes the new column with the numbers 1-number of rows
#' @export
#'
#' @examples
#'Look at BayouDataMoves to see an example of this function in action

Trumpets <- function(data, column_name) {
  library(dplyr)
  data <- as.data.frame(data)

  My_Ordered <- data %>%
    arrange(.data[[column_name]]) %>%
    mutate(`order-id` = row_number())
  head(My_Ordered)
}
