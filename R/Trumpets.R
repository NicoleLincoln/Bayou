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
