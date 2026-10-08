library(showtext)
font_add_google("Unna", "Raymond")
showtext_auto()

Evangeline <- function(gridline_x = FALSE, gridline_y = TRUE) {
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
      size = 30,
      face = "bold",
      color = "#10383A",
      margin = margin(b = 10),
      hjust= 0.5
    ),
    plot.subtitle = element_text(
      size = 22,
      color = "#666e51",
      margin = margin(b = 10),
      hjust=0.5
    ),
    plot.caption = element_text(
      size = 17,
      color = "#809276",
      margin = margin(t = 15),
      hjust = 0
    ),
    axis.text.x = element_text(
      size = 17,
      color = "#10383A",
      angle = 45,
      hjust = 1
    ),
    axis.text.y = element_text(
      size = 17,
      color = "#10383A"
    ),
    axis.title.x = element_text(
      size = 18,
      color = "#10383A",
      margin = margin(t = 10)
    ),
    axis.title.y = element_text(
      size = 18,
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

