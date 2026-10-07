#' Title
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
#' Ordered <- Trumpets(castle,"year")

Trumpets <- function(data, column_name) {
  library(dplyr)
  data <- as.data.frame(data)

  if (column_name == "date") {
    data[[column_name]] <- as.Date(data[[column_name]], format = "%m/%d/%Y")
  }

  data %>%
    arrange(.data[[column_name]]) %>%
    mutate(`order-id` = row_number())
}
