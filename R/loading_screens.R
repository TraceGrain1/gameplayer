#' Boot up the Game and Bring in the Boot logo
#'
#' @param media_p Path to PNG file
#' @param scalar_x numeric value to move title photo along x axis
#' @param scalar_y numeric value to move title photo along y axis
#'
#' @return
#' @export
#'
#' @examples
game_boot <- function(media_p, scalar_x = 0, scalar_y = 0) {

  # Load in image from directory
  media_p_file <- image_trim(image_read(media_p))

  # Rasterize image
  media_p_file <- as.raster(media_p_file)


  ggplot() +

    annotation_raster(
      media_p_file,
      xmin = -50 + scalar_x,
      ymin = -50 + scalar_y,
      xmax = 50 + scalar_x,
      ymax = 50 + scalar_y
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



#' Make a loading screen for the game
#'
#' @param media_v Path to a video file for the loading screen
#' @param media_ps list of paths to use for the logos
#' @param inside_background Background image for the game loading screen
#' @param nr Empty native raster object
#'
#' @return
#' @export
#'
#' @examples
game_loading_screen_wide_view <- function (media_v, media_ps, inside_background, nr) {

  loading_video <- image_read_video(media_v, fps = 15, format = "png")

  my_photo <- list()

  for(i in 1:length(loading_video)){
    loading_screen_raster <- as.raster(loading_video[i])
    print(paste0("Processed ", i, " images out of ", length(loading_video) , " ", round(i/length(loading_video), digits = 2)))
    if(i%%6 == 0){
      gc()
    }

    my_ggplot <- ggplot() +

      geom_rect(aes(xmin =-250, xmax = 250, ymin = 200, ymax = 250), fill = "#0000FF", alpha = 1)+

      geom_rect(aes(xmin =-250, xmax = 250, ymin = 225, ymax = 250), fill = "#FF0000", alpha = 1)+


      geom_rect(aes(xmin =-250, xmax = 250, ymin = -250, ymax = -200), fill = "#0000FF", alpha = 1)+

      geom_rect(aes(xmin =-250, xmax = 250, ymin = -250, ymax = -225), fill = "#FF0000", alpha = 1)+


      geom_rect(aes(xmin =-250, xmax = -200, ymin = -250, ymax = 250), fill = "#0000FF", alpha = 1)+

      geom_rect(aes(xmin =-250, xmax = -225, ymin = -200, ymax = 200), fill = "#FF0000", alpha = 1)+


      geom_rect(aes(xmin = 200, xmax = 250, ymin = -250, ymax = 250), fill = "#0000FF", alpha = 1)+

      geom_rect(aes(xmin = 225, xmax = 250, ymin = -200, ymax = 200), fill = "#FF0000", alpha = 1)+

      annotation_raster(readPNG(inside_background, native = T), xmin = -200, ymin = -200, xmax = 200, ymax = 200)+


      geom_line(aes(x = c(-190, 190), y = c(190, 190)), size = 1.5) +

      geom_line(aes(x = c(-190, 190), y = c(-50, -50)), size = 1.5) +

      geom_line(aes(x = c(-190, -190), y = c(190, -50)), size = 1.5) +

      geom_line(aes(x = c(190, 190), y = c(190, -50)), size = 1.5) +

      geom_rect(aes(xmin = -190, xmax = 190, ymin = -50, ymax = 190), fill = "#FF0000", alpha = 1)+


      geom_line(aes(x = c(-190, 190), y = c(-190, -190)), size = 1.5) +

      geom_line(aes(x = c(-190, 190), y = c(-150, -150)), size = 1.5) +

      geom_line(aes(x = c(-190, -190), y = c(-190, -150)), size = 1.5) +

      geom_line(aes(x = c(190, 190), y = c(-190, -150)), size = 1.5) +


      geom_rect(aes(xmin = -190, xmax = 190, ymin = -188, ymax = -150), fill = "#FF0000", alpha = 0.65)+


      geom_star(aes(x  = -210, y = 195), fill = "#FFFFFF", size=9) +

      geom_star(aes(x  = 210, y = 195), fill = "#FFFFFF", size=9) +

      geom_star(aes(x  = -210, y = -195), fill = "#FFFFFF", size=9) +

      geom_star(aes(x  = 210, y = -195), fill = "#FFFFFF", size=9) +

      annotate("text", x = 0, y = -240, label = "RATED M FOR MATURE", family = "Aerologica" , size = 4) +

      annotation_raster(loading_screen_raster, xmin = -188, ymin = 188, xmax = 188, ymax = -48)+

      annotation_raster(readPNG(media_ps[1], native = T), xmin = -80, ymin = -145, xmax = 80, ymax = -52)+

      annotation_raster(readPNG(media_ps[2], native = T), xmin = -180, ymin = -145, xmax = -85, ymax = -60)+

      annotation_raster(readPNG(media_ps[3], native = T), xmin = 85, ymin = -145, xmax = 180, ymax = -60)+

      geom_rect(aes(xmin = -190, xmax = 190, ymin = -188, ymax = -150), fill = "#000000", alpha = 0.65)+

      annotate("text", x = 0, y = 0, label = "GAME LOADING", family = "Aerologica" , size = 10, colour = "#0000FF") +

      # Create Box around whole image
      geom_line(aes(x = c(-250, 250), y = c(250, 250)), size = 1.5) + # Top
      geom_line(aes(x = c(-250, 250), y = c(-250, -250)), size = 1.5) + # Bottom

      geom_line(aes(x = c(250, 250), y = c(250, -250)), size = 1.5) + # Left
      geom_line(aes(x = c(-250, -250), y = c(250, -250)), size = 1.5) + # Right

      # Fixed scale for the coordinate system
      coord_fixed() +
      theme(legend.position = "none",
            panel.grid.major = element_blank(),
            panel.grid.minor = element_blank(),
            panel.background = element_blank(),
            axis.title.x = element_blank(),
            axis.title.y = element_blank(),
            axis.ticks.x = element_blank(),
            axis.ticks.y = element_blank(),
            axis.text.x = element_blank(),
            axis.text.y = element_blank())

    # Make the temparary file
    temp <- tempfile(pattern = "plot_", fileext = ".png")

    # Create a png
    png(temp, width = 485, height = 495)

    # Print the plott to the png
    print(my_ggplot)

    # turn the device off
    dev.off()

    # read in the temp file
    my_photo <- append(my_photo, list(readPNG(temp, native = T)))

    # get rid of the temp file
    unlink(temp, recursive = FALSE, force = FALSE)
  }

  for(i in 1:length(my_photo)){
    nr_blit(nr = nr, my_photo[[i]], 0,0)
    dev.hold()
    grid.raster(nr, interpolate = FALSE)
    dev.flush()
    Sys.sleep(0.05)
  }
}

#' Make a loading screen for the game
#'
#' @param media_v Path to a video file for the loading screen
#' @param media_ps list of paths to use for the logos
#' @param inside_background Background image for the game loading screen
#' @param nr Empty native raster object
#'
#'
#' @return
#' @export
#'
#' @examples
game_loading_screen_long_view <- function (media_v, media_p, inside_background, nr) {

  loading_video <- image_read_video(media_v, fps = 15, format = "png")

  my_photo <- list()

  for(i in 1:length(loading_video)){
    loading_screen_raster <- as.raster(loading_video[i])
    print(paste0("Processed ", i, " images out of ", length(loading_video) , " ", round(i/length(loading_video), digits = 2)))
    if(i%%6 == 0){
      gc()
    }

    my_ggplot <- ggplot() +

      geom_rect(aes(xmin =-250, xmax = 250, ymin = 200, ymax = 250), fill = "#0000FF", alpha = 1)+

      geom_rect(aes(xmin =-250, xmax = 250, ymin = 225, ymax = 250), fill = "#FF0000", alpha = 1)+


      geom_rect(aes(xmin =-250, xmax = 250, ymin = -250, ymax = -200), fill = "#0000FF", alpha = 1)+

      geom_rect(aes(xmin =-250, xmax = 250, ymin = -250, ymax = -225), fill = "#FF0000", alpha = 1)+


      geom_rect(aes(xmin =-250, xmax = -200, ymin = -250, ymax = 250), fill = "#0000FF", alpha = 1)+

      geom_rect(aes(xmin =-250, xmax = -225, ymin = -200, ymax = 200), fill = "#FF0000", alpha = 1)+


      geom_rect(aes(xmin = 200, xmax = 250, ymin = -250, ymax = 250), fill = "#0000FF", alpha = 1)+

      geom_rect(aes(xmin = 225, xmax = 250, ymin = -200, ymax = 200), fill = "#FF0000", alpha = 1)+

      annotation_raster(readPNG(inside_background, native = T), xmin = -200, ymin = -200, xmax = 200, ymax = 200)+


      geom_line(aes(x = c(-190, 25), y = c(190, 190)), size = 1.5) +

      geom_line(aes(x = c(-190, 25), y = c(-190, -190)), size = 1.5) +

      geom_line(aes(x = c(-190, -190), y = c(190, -190)), size = 1.5) +

      geom_line(aes(x = c(25, 25), y = c(190, -190)), size = 1.5) +

      geom_rect(aes(xmin = -190, xmax = 25, ymin = -190, ymax = 190), fill = "#FF0000", alpha = 1)+


      geom_line(aes(x = c(35, 190), y = c(-190, -190)), size = 1.5) +

      geom_line(aes(x = c(35, 190), y = c(-150, -150)), size = 1.5) +

      geom_line(aes(x = c(35, 35), y = c(-190, -150)), size = 1.5) +

      geom_line(aes(x = c(190, 190), y = c(-190, -150)), size = 1.5) +


      geom_rect(aes(xmin = 35, xmax = 190, ymin = -188, ymax = -150), fill = "#FF0000", alpha = 0.65)+


      geom_star(aes(x  = -210, y = 195), fill = "#FFFFFF", size=9) +

      geom_star(aes(x  = 210, y = 195), fill = "#FFFFFF", size=9) +

      geom_star(aes(x  = -210, y = -195), fill = "#FFFFFF", size=9) +

      geom_star(aes(x  = 210, y = -195), fill = "#FFFFFF", size=9) +

      annotate("text", x = 0, y = -240, label = "RATED M FOR MATURE", family = "Aerologica" , size = 4) +

      annotation_raster(loading_screen_raster, xmin = -188, ymin = -188, xmax = 23, ymax = 188)+

      annotation_raster(readPNG(media_p, native = T), xmin = 25, ymin = -145, xmax = 180, ymax = 188)+

      geom_rect(aes(xmin = 35, xmax = 188, ymin = -188, ymax = -150), fill = "#000000", alpha = 0.65)+

      annotate("text", x = -80, y = 160, label = "GAME", family = "Aerologica" , size = 10, colour = "#0000FF") +

      annotate("text", x = -80, y = -160, label = "LOADING", family = "Aerologica" , size = 10, colour = "#0000FF") +

      # Create Box around whole image
      geom_line(aes(x = c(-250, 250), y = c(250, 250)), size = 1.5) + # Top
      geom_line(aes(x = c(-250, 250), y = c(-250, -250)), size = 1.5) + # Bottom

      geom_line(aes(x = c(250, 250), y = c(250, -250)), size = 1.5) + # Left
      geom_line(aes(x = c(-250, -250), y = c(250, -250)), size = 1.5) + # Right

      # Fixed scale for the coordinate system
      coord_fixed() +
      theme(legend.position = "none",
            panel.grid.major = element_blank(),
            panel.grid.minor = element_blank(),
            panel.background = element_blank(),
            axis.title.x = element_blank(),
            axis.title.y = element_blank(),
            axis.ticks.x = element_blank(),
            axis.ticks.y = element_blank(),
            axis.text.x = element_blank(),
            axis.text.y = element_blank())

    # Make the temparary file
    temp <- tempfile(pattern = "plot_", fileext = ".png")

    # Create a png
    png(temp, width = 485, height = 495)

    # Print the plott to the png
    print(my_ggplot)

    # turn the device off
    dev.off()

    # read in the temp file
    my_photo <- append(my_photo, list(readPNG(temp, native = T)))

    # get rid of the temp file
    unlink(temp, recursive = FALSE, force = FALSE)
  }

  for(i in 1:length(my_photo)){
    nr_blit(nr = nr, my_photo[[i]], 0,0)
    dev.hold()
    grid.raster(nr, interpolate = FALSE)
    dev.flush()
    Sys.sleep(0.05)
  }
}
