
#' The Theme Evangeline
#'
#' @param gridline_x
#' If you want grid lines on your x axis in your visualization, set gridline_x=TRUE, if you do not want them enter gridline_x=FALSE
#' @param gridline_y
#' If you want grid lines on your y axis on your visualization, set gridline_y=TRUE, if you do not want them enter gridline_y=FALSE
#'
#' @returns
#' A visualization with a centered title and subtitle will show up. An additional feature of this theme is the x axis titles being titled and centered.
#' @export
#'
#' @examples
#' Theme_Evangeline has examples on how the theme is used

Evangeline <- function(gridline_x = FALSE, gridline_y = TRUE) {
  library(showtext)
  font_add_google("Unna", "Raymond")
  showtext_auto()

  gridline <- element_line(
    linetype = "dashed",
    linewidth = 0.15,
    color = "#10383A"
  )

  gridline_x <- if (isTRUE(gridline_x)) {
    gridline
  } else {
    element_blank()
  }

  gridline_y <- if (isTRUE(gridline_y)) {
    gridline
  } else {
    element_blank()
  }

  # Set base theme and font family =============================================
  theme_minimal(
    base_family = "Raymond" #font goes here
  ) +
    # Overwrite base theme defaults ============================================
  theme(
    # Text elements ==========================================================
    plot.title = element_text(
      size = 18,
      face = "bold",
      color = "#10383A",
      margin = margin(b = 10),
      hjust= 0.5
    ),
    plot.subtitle = element_text(
      size = 12,
      color = "#666e51",
      margin = margin(b = 10),
      hjust=0.5
    ),
    plot.caption = element_text(
      size = 10,
      color = "#809276",
      margin = margin(t = 15),
      hjust = 0
    ),
    axis.text.x = element_text(
      size = 12,
      color = "#10383A",
      angle = 45,
      hjust = 1
    ),
    axis.text.y = element_text(
      size = 12,
      color = "#10383A"
    ),
    axis.title.x = element_text(
      size = 15,
      color = "#10383A",
      margin = margin(t = 10)
    ),
    axis.title.y = element_text(
      size = 15,
      color = "#10383A",
      margin = margin(r = 10)
    ),
    plot.title.position = "plot",
    plot.caption.position = "plot",
    # Line elements ==========================================================
    panel.grid.minor = element_blank(),
    panel.grid.major.x = gridline_x,
    panel.grid.major.y = gridline_y,
    axis.ticks.x = element_line(
      linetype = "solid",
      linewidth = 0.25,
      color = "#10383A"
    ),
    axis.ticks.length.x = unit(4, units = "pt")
  )
}

