#' Draw a large sprite on the left side
#'
#' @param media_p Path to PNG file
#' @param flop Conditional switch in order to flop the image
#' @param scalar_x numeric value to move menu photo along x axis
#' @param scalar_y numeric value to move menu photo along y axis
#'
#' @return
#' @export
#'
#' @examples
menu_sprite_large_left <- function(media_p,
                                   flop = FALSE,
                                   scalar_x = 0,
                                   scalar_y = 0) {

  # Load in image from directory
  if(flop == FALSE) {
    title_character <- image_trim(image_read(media_p))
  } else {
    title_character <- image_flop(image_trim(image_read(media_p)))
  }

  # Rasterize image
  title_character <- as.raster(title_character)


  ggplot() +

    annotation_raster(
      title_character,
      xmin = -150 + scalar_x,
      ymin = -130 + scalar_y,
      xmax = 40 + scalar_x,
      ymax = 115+ scalar_y
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


#' Draw a small sprite on the bottom right
#'
#' @param media_p Path to PNG file
#' @param flop Conditional switch in order to flop the image
#' @param scalar_x numeric value to move menu photo along x axis
#' @param scalar_y numeric value to move menu photo along y axis
#'
#' @return
#' @export
#'
#' @examples
menu_sprite_small_right <- function(media_p,
                                   flop = FALSE,
                                   scalar_x = 0,
                                   scalar_y = 0) {

  # Load in image from directory
  if(flop == FALSE) {
    title_character <- image_trim(image_read(media_p))
  } else {
    title_character <- image_flop(image_trim(image_read(media_p)))
  }

  # Rasterize image
  title_character <- as.raster(title_character)


  ggplot() +

    annotation_raster(
      title_character,
      xmin = 15 + scalar_x,
      ymin = -120 + scalar_y,
      xmax = 150 + scalar_x,
      ymax = 10 + scalar_y
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
