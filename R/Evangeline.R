
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
#' #Theme_Evangeline contains examples on how the theme is used

Evangeline <- function(gridline_x = FALSE, gridline_y = TRUE) {
  sysfonts::font_add_google("Unna", "Raymond")
  showtext::showtext_auto()

  gridline <- ggplot2::element_line(
    linetype = "dashed",
    linewidth = 0.15,
    color = "#10383A"
  )

  gridline_x <- if (isTRUE(gridline_x)) {
    gridline
  } else {
    ggplot2::element_blank()
  }

  gridline_y <- if (isTRUE(gridline_y)) {
    gridline
  } else {
    ggplot2::element_blank()
  }

  # Set base theme and font family =============================================
  ggplot2::theme_minimal(
    base_family = "Raymond" #font goes here
  ) +
    # Overwrite base theme defaults ============================================
  ggplot2::theme(
    # Text elements ==========================================================
    plot.title = ggplot2::element_text(
      size = 18,
      face = "bold",
      color = "#10383A",
      margin = ggplot2::margin(b = 10),
      hjust= 0.5
    ),
    plot.subtitle = ggplot2::element_text(
      size = 12,
      color = "#666e51",
      margin = ggplot2::margin(b = 10),
      hjust=0.5
    ),
    plot.caption = ggplot2::element_text(
      size = 10,
      color = "#809276",
      margin = ggplot2::margin(t = 15),
      hjust = 0
    ),
    axis.text.x = ggplot2::element_text(
      size = 12,
      color = "#10383A",
      angle = 45,
      hjust = 1
    ),
    axis.text.y = ggplot2::element_text(
      size = 12,
      color = "#10383A"
    ),
    axis.title.x = ggplot2::element_text(
      size = 15,
      color = "#10383A",
      margin = ggplot2::margin(t = 10)
    ),
    axis.title.y = ggplot2::element_text(
      size = 15,
      color = "#10383A",
      margin = ggplot2::margin(r = 10)
    ),
    plot.title.position = "plot",
    plot.caption.position = "plot",
    # Line elements ==========================================================
    panel.grid.minor = ggplot2::element_blank(),
    panel.grid.major.x = gridline_x,
    panel.grid.major.y = gridline_y,
    axis.ticks.x = ggplot2::element_line(
      linetype = "solid",
      linewidth = 0.25,
      color = "#10383A"
    ),
    axis.ticks.length.x = ggplot2::unit(4, units = "pt")
  )
}

