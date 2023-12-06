#' Draw the Base Layer for the Game Boot Plot
#'
#' @param outline_switch A conditional to display black outlines around the plot
#'
#' @return
#' @export
#'
#' @examples
base_game_boot_draw <- function (outline_switch = TRUE) {

  ggplot() +

    # Create Box around whole image

    geom_line(
      aes(x = c(-150, 150), y = c(150, 150)),
      size = 1.5,
      colour = ifelse(outline_switch == TRUE, "black", "white")
    )+ # Top


    geom_line(
      aes(x = c(-150, 150), y = c(-150, -150)),
      size = 1.5,
      colour = ifelse(outline_switch == TRUE, "black", "white")
    )+ # Bottom

    geom_line(
      aes(x = c(150, 150), y = c(150, -150)),
      size = 1.5,
      colour = ifelse(outline_switch == TRUE, "black", "white")
    )+ # Left


    geom_line(
      aes(x = c(-150, -150), y = c(150, -150)),
      size = 1.5,
      colour = ifelse(outline_switch == TRUE, "black", "white")
    )+ # Right


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



#' Draw the Base Layer for the Game Title Plot
#'
#' @param outline_switch A conditional to display black outlines around the plot
#'
#' @return
#' @export
#'
#' @examples
base_title_draw <- function (outline_switch = TRUE) {

  ggplot() +

    # Create Box around whole image

    geom_line(
      aes(x = c(-150, 150), y = c(150, 150)),
      size = 1.5,
      colour = ifelse(outline_switch == TRUE, "black", "white")
    )+ # Top


    geom_line(
      aes(x = c(-150, 150), y = c(-150, -150)),
      size = 1.5,
      colour = ifelse(outline_switch == TRUE, "black", "white")
    )+ # Bottom

    geom_line(
      aes(x = c(150, 150), y = c(150, -150)),
      size = 1.5,
      colour = ifelse(outline_switch == TRUE, "black", "white")
    )+ # Left


    geom_line(
      aes(x = c(-150, -150), y = c(150, -150)),
      size = 1.5,
      colour = ifelse(outline_switch == TRUE, "black", "white")
    )+ # Right



    geom_rect(
      aes(xmin = -150, xmax = 150, ymin = -130, ymax = 150),
      fill = "#0000FF",
      alpha = 0.5
    ) +


    geom_rect(
      aes(xmin = -150, xmax = 150, ymin = 15, ymax = 70),
      fill = "#FF0000",
      alpha = 1
    )+

    geom_rect(
      aes(xmin = -150, xmax = 150, ymin = 30, ymax = 55),
      fill = "#0000FF",
      alpha = 1
    )+


    geom_rect(
      aes(xmin = -150, xmax = 150, ymin = -115, ymax = -60),
      fill = "#FF0000",
      alpha = 1
    )+

    geom_rect(
      aes(xmin = -150, xmax = 150, ymin = -100, ymax = -75),
      fill = "#0000FF",
      alpha = 1
    )+


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



#' Draw the Base layer for the Game Mode Plot
#'
#' @param outline_switch A conditional to display black outlines around the plot
#' @param inside_background The middle center background
#' @param game_title User Defined Title
#'
#' @return
#' @export
#'
#' @examples
base_mode_select_draw <- function (outline_switch = TRUE,
                                   inside_background,
                                   game_title = "GAMEPLAYER") {


  media_p_file <- image_trim(image_read(inside_background))

  # Rasterize image
  media_p_file <- as.raster(media_p_file)

  ggplot() +

    # Create Box around whole image

    geom_line(
      aes(x = c(-150, 150), y = c(150, 150)),
      size = 1.5,
      colour = ifelse(outline_switch == TRUE, "black", "white")
    ) + # Top


    geom_line(
      aes(x = c(-150, 150), y = c(-150, -150)),
      size = 1.5,
      colour = ifelse(outline_switch == TRUE, "black", "white")
    ) + # Bottom

    geom_line(
      aes(x = c(150, 150), y = c(150, -150)),
      size = 1.5,
      colour = ifelse(outline_switch == TRUE, "black", "white")
    ) + # Left


    geom_line(
      aes(x = c(-150, -150), y = c(150, -150)),
      size = 1.5,
      colour = ifelse(outline_switch == TRUE, "black", "white")
    ) + # Right


    geom_rect(
      aes(xmin =-150, ymin = 115, xmax = 150, ymax = 150),
      fill = "#0000FF",
      alpha = 1
    ) +

    geom_rect(
      aes(xmin =-150, ymin = 122, xmax = 150,  ymax = 143),
      fill = "#FF0000",
      alpha = 1
    ) +

    geom_rect(
      aes(xmin =-150, ymin = -115, xmax = 150, ymax = -150),
      fill = "#0000FF",
      alpha = 1
    ) +

    geom_rect(
      aes(xmin =-150, ymin = -143, xmax = 150,  ymax = -122),
      fill = "#FF0000",
      alpha = 1
    ) +


    annotate(
      "text",
      x = 0,
      y = 135,
      label = game_title,
      family = "Aerologica" ,
      size = 10
    ) +

    annotation_raster(
      media_p_file,
      xmin = -150,
      ymin = -115,
      xmax = 150,
      ymax = 115
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
