#' Draw PRESS START on the Screen
#'
#' @param press_start Conditional to turn on the PRESS START switch
#' @param font Font used to draw "Press Start PRESS START
#'
#' @return
#' @export
#'
#' @examples
press_start_on <- function (press_start = TRUE, font = "Abduction2002") {

  ggplot() +

    annotate(
      "text",
      x = 0,
      y = 0,
      label = ifelse(press_start == TRUE,"PRESS START", ""),
      family = font,
      size = 6.5
    ) +

    # Fixed scale for the coordinate system
    coord_fixed() +

    theme(
      legend.position = "none",
      panel.grid.major = element_blank(),
      panel.grid.minor = element_blank(),
      panel.background = element_blank(),
      axis.title.x = element_blank(),
      axis.title.y = element_blank(),
      axis.ticks.x = element_blank(),
      axis.ticks.y = element_blank(),
      axis.text.x = element_blank(),
      axis.text.y = element_blank()
    )

}



