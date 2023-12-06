#' Default Story Mode Text Location
#'
#' @param press_mode Toggle the mode switch
#' @param text User defined text for mode
#' @param font User defined font
#' @param font_size size of font
#' @param scalar_x numeric value to move menu text along x axis
#' @param scalar_y numeric value to move title photo along y axis
#'
#' @return
#' @export
#'
#' @examples
base_two_mode_battle_game_menu_1 <- function (press_mode = TRUE,
                                         text = "STORY MODE",
                                         font = "Abduction2002",
                                         font_size = 8,
                                         scalar_x = 65,
                                         scalary = 80) {

  ggplot() +

    annotate(
      "text",
      x = 0 + scalar_x,
      y = 0 + scalary,
      label = ifelse(press_mode == TRUE, text, ""),
      family = font,
      size = font_size
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

#' Default Battle Mode Text Location
#'
#' @param press_mode Toggle the mode switch
#' @param text User defined text for mode
#' @param font User defined font
#' @param font_size size of font
#' @param scalar_x numeric value to move menu text along x axis
#' @param scalar_y numeric value to move title photo along y axis
#'
#' @return
#' @export
#'
#' @examples
base_two_mode_battle_game_menu_2 <- function (press_mode = TRUE,
                                         text = "BATTLE MODE",
                                         font = "Abduction2002",
                                         font_size = 8,
                                         scalar_x = 70,
                                         scalary = 50) {

  ggplot() +

    annotate(
      "text",
      x = 0 + scalar_x,
      y = 0 + scalary,
      label = ifelse(press_mode == TRUE, text, ""),
      family = font,
      size = font_size
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
