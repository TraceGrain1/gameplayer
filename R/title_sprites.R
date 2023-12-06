#' Draw a title sprite on the left side of the screen
#'
#' @param media_p Path to PNG file
#' @param flop Conditional switch in order to flop the image
#' @param scalar_x numeric value to move title photo along x axis
#' @param scalar_y numeric value to move title photo along y axis
#'
#' @return
#' @export
#'
#' @examples
title_character_left <- function(media_p, flop = FALSE, scalar_x = 0, scalar_y = 0) {

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
      xmax = -50 + scalar_x,
      ymax = 70 + scalar_y
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


#' Draw a title sprite on the right side of the screen
#'
#' @param media_p Path to PNG file
#' @param flop Conditional switch in order to flop the image
#' @param scalar_x numeric value to move title photo along x axis
#' @param scalar_y numeric value to move title photo along y axis
#'
#' @return
#' @export
#'
#' @examples
title_character_right <- function(media_p, flop = FALSE, scalar_x = 0, scalar_y = 0) {

  # Load in image from directory
  if(flop == FALSE) {
    media_p_file <- image_trim(image_read(media_p))
  } else {
    title_character <- image_flop(image_trim(image_read(media_p)))
  }

  # Rasterize image
  media_p_file <- as.raster(media_p_file)


  ggplot() +

    annotation_raster(
      media_p_file,
      xmin = 150 + scalar_x,
      ymin = -130 + scalar_y,
      xmax = 50 + scalar_x,
      ymax = 70 + scalar_y
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



#' Logo on the Top Left
#'
#' @param media_p Path to PNG file
#' @param flop Conditional switch in order to flop the image
#' @param scalar_x numeric value to move title photo along x axis
#' @param scalar_y numeric value to move title photo along y axis
#'
#' @return
#' @export
#'
#' @examples
logo_left <- function(media_p, flop = FALSE, scalar_x = 0, scalar_y = 0) {

  # Load in image from directory
  if(flop == FALSE) {
    media_p_file <- image_trim(image_read(media_p))
  } else {
    media_p_file <- image_flop(image_trim(image_read(media_p)))
  }

  # Rasterize image
  media_p_file <- as.raster(media_p_file)


  ggplot() +

    annotation_raster(
      media_p_file,
      xmin = 40 + scalar_x,
      ymin = 80 + scalar_y,
      xmax = 100 + scalar_x,
      ymax = 150 + scalar_y
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



#' Logo on the Top Left
#'
#' @param media_p Path to PNG file
#' @param flop Conditional switch in order to flop the image
#' @param scalar_x numeric value to move title photo along x axis
#' @param scalar_y numeric value to move title photo along y axis
#'
#' @return
#' @export
#'
#' @examples
logo_right <- function(media_p, flop = FALSE, scalar_x = 0, scalar_y = 0) {

  # Load in image from directory
  if(flop == FALSE) {
    media_p_file <- image_trim(image_read(media_p))
  } else {
    media_p_file <- image_flop(image_trim(image_read(media_p)))
  }

  # Rasterize image
  media_p_file <- as.raster(media_p_file)


  ggplot() +

    annotation_raster(
      media_p_file,
      xmin = -100 + scalar_x,
      ymin = 80 + scalar_y,
      xmax = -40 + scalar_x,
      ymax = 150 + scalar_y
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




#' Logo in the Top Middle
#'
#' @param media_p Path to PNG file
#' @param flop Conditional switch in order to flop the image
#' @param scalar_x numeric value to move title photo along x axis
#' @param scalar_y numeric value to move title photo along y axis
#'
#' @return
#' @export
#'
#' @examples
logo_middle <- function(media_p, flop = FALSE, scalar_x = 0, scalar_y = 0) {

  # Load in image from directory
  if(flop == FALSE) {
    media_p_file <- image_trim(image_read(media_p))
  } else {
    media_p_file <- image_flop(image_trim(image_read(media_p)))
  }

  # Rasterize image
  media_p_file <- as.raster(media_p_file)


  ggplot() +

    annotation_raster(
      media_p_file,
      xmin = -40 + scalar_x,
      ymin = 80 + scalar_y,
      xmax = 40 + scalar_x,
      ymax = 150 + scalar_y
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


#' Logo on the Bottom Left
#'
#' @param media_p Path to PNG file
#' @param flop Conditional switch in order to flop the image
#' @param scalar_x numeric value to move title photo along x axis
#' @param scalar_y numeric value to move title photo along y axis
#'
#' @return
#' @export
#'
#' @examples
logo_left_bottom <- function(media_p, flop = FALSE, scalar_x = 0, scalar_y = 0) {

  # Load in image from directory
  if(flop == FALSE) {
    media_p_file <- image_trim(image_read(media_p))
  } else {
    media_p_file <- image_flop(image_trim(image_read(media_p)))
  }

  # Rasterize image
  media_p_file <- as.raster(media_p_file)


  ggplot() +

    annotation_raster(
      media_p_file,
      xmin = 40 + scalar_x,
      ymin = -150 + scalar_y,
      xmax = 100 + scalar_x,
      ymax = -80 + scalar_y
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

#' Logo on the Bottom Right
#'
#' @param media_p Path to PNG file
#' @param flop Conditional switch in order to flop the image
#' @param scalar_x numeric value to move title photo along x axis
#' @param scalar_y numeric value to move title photo along y axis
#'
#' @return
#' @export
#'
#' @examples
logo_right_bottom <- function(media_p, flop = FALSE, scalar_x = 0, scalar_y = 0) {

  # Load in image from directory
  if(flop == FALSE) {
    media_p_file <- image_trim(image_read(media_p))
  } else {
    media_p_file <- image_flop(image_trim(image_read(media_p)))
  }

  # Rasterize image
  media_p_file <- as.raster(media_p_file)


  ggplot() +

    annotation_raster(
      media_p_file,
      xmin = -100 + scalar_x,
      ymin = -150 + scalar_y,
      xmax = -40 + scalar_x,
      ymax = -80 + scalar_y
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


#' Logo on the Bottom Middle
#'
#' @param media_p Path to PNG file
#' @param flop Conditional switch in order to flop the image
#' @param scalar_x numeric value to move title photo along x axis
#' @param scalar_y numeric value to move title photo along y axis
#'
#' @return
#' @export
#'
#' @examples
logo_middle_bottom <- function(media_p, flop = FALSE, scalar_x = 0, scalar_y = 0) {

  # Load in image from directory
  if(flop == FALSE) {
    media_p_file <- image_trim(image_read(media_p))
  } else {
    media_p_file <- image_flop(image_trim(image_read(media_p)))
  }

  # Rasterize image
  media_p_file <- as.raster(media_p_file)


  ggplot() +

    annotation_raster(
      media_p_file,
      xmin = -40 + scalar_x,
      ymin = -150 + scalar_y,
      xmax = 40 + scalar_x,
      ymax = -80 + scalar_y
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

#' Logo in the Middle Center
#'
#' @param media_p Path to PNG file
#' @param flop Conditional switch in order to flop the image
#' @param scalar_x numeric value to move title photo along x axis
#' @param scalar_y numeric value to move title photo along y axis
#'
#' @return
#' @export
#'
#' @examples
logo_middle_center <- function(media_p, flop = FALSE, scalar_x = 0, scalar_y = 0) {

  # Load in image from directory
  if(flop == FALSE) {
    media_p_file <- image_trim(image_read(media_p))
  } else {
    media_p_file <- image_flop(image_trim(image_read(media_p)))
  }

  # Rasterize image
  media_p_file <- as.raster(media_p_file)


  ggplot() +

    annotation_raster(
      media_p_file,
      xmin = -50 + scalar_x,
      ymin = -115 + scalar_y,
      xmax = 50 + scalar_x,
      ymax = 60 + scalar_y
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
