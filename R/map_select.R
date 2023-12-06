#' Select the map for the game
#'
#' @param map_1 Map 1
#' @param map_2 Map 2
#' @param map_3 Map 3
#' @param map_4 Map 4
#' @param insidebackground Path to background image for the map screen
#' @param label_top # Top text for the map
#' @param label_bottom Bottom text for the map
#'
#' @return
#' @export
#'
#' @examples
map_select <- function (map_1, map_2, map_3, map_4, insidebackground, label_top = "GAME", label_bottom = "PLAYER") {

  ggplot() +

    annotation_raster(as.raster(image_trim(image_read(insidebackground))), xmin = -150, ymin = -150, xmax = 150, ymax = 150)+

    # Map 1 box
    geom_line(aes(x = c(-130, -5), y = c(130, 130)), size = 1.5) + # Top
    geom_line(aes(x = c(-130, -5), y = c(60, 60)), size = 1.5) + # Bottom

    geom_line(aes(x = c(-130, -130), y = c(60, 130)), size = 1.5) + # Left
    geom_line(aes(x = c(-5, -5), y = c(60, 130)), size = 1.5) + # Right


    # Map 2 box
    geom_line(aes(x = c(130, 5), y = c(130, 130)), size = 1.5) + # Top
    geom_line(aes(x = c(130, 5), y = c(60, 60)), size = 1.5) + # Bottom

    geom_line(aes(x = c(130, 130), y = c(60, 130)), size = 1.5) + # Left
    geom_line(aes(x = c(5, 5), y = c(60, 130)), size = 1.5) + # Right


    # Map 3 box
    geom_line(aes(x = c(-130, -5), y = c(50, 50)), size = 1.5) + # Top
    geom_line(aes(x = c(-130, -5), y = c(-20, -20)), size = 1.5) + # Bottom

    geom_line(aes(x = c(-130, -130), y = c(-20, 50)), size = 1.5) + # Left
    geom_line(aes(x = c(-5, -5), y = c(-20, 50)), size = 1.5) + # Right


    # Map 4 box
    geom_line(aes(x = c(130, 5), y = c(50, 50)), size = 1.5) + # Top
    geom_line(aes(x = c(130, 5), y = c(-20, -20)), size = 1.5) + # Bottom

    geom_line(aes(x = c(130, 130), y = c(-20, 50)), size = 1.5) + # Left
    geom_line(aes(x = c(5, 5), y = c(-20, 50)), size = 1.5) + # Right


    geom_rect(aes(xmin =-150, xmax = 150, ymin = 132, ymax = 150), fill = "#0000FF", alpha = 1)+

    geom_rect(aes(xmin =-150, xmax = 150, ymin = 140, ymax = 150), fill = "#FF0000", alpha = 1)+


    geom_rect(aes(xmin =-150, xmax = 150, ymin = -150, ymax = -132), fill = "#0000FF", alpha = 1)+

    geom_rect(aes(xmin =-150, xmax = 150, ymin = -150, ymax = -140), fill = "#FF0000", alpha = 1)+


    geom_rect(aes(xmin =-150, xmax = -132, ymin = -150, ymax = 150), fill = "#0000FF", alpha = 1)+

    geom_rect(aes(xmin =-150, xmax = -140, ymin = -132, ymax = 132), fill = "#FF0000", alpha = 1)+


    geom_rect(aes(xmin = 132, xmax = 150, ymin = -150, ymax = 150), fill = "#0000FF", alpha = 1)+

    geom_rect(aes(xmin = 140, xmax = 150, ymin = -132, ymax = 132), fill = "#FF0000", alpha = 1)+

    # Accent Box 1
    geom_line(aes(x = c(-150, -132), y = c(150, 150)), size = 1.5) + # Top
    geom_line(aes(x = c(-150, -132), y = c(132, 132)), size = 1.5) + # Bottom

    geom_line(aes(x = c(-150, -150), y = c(132, 150)), size = 1.5) + # Left
    geom_line(aes(x = c(-132, -132), y = c(132, 150)), size = 1.5) + # Right

    # Accent Box 2
    geom_line(aes(x = c(132, 150), y = c(150, 150)), size = 1.5) + # Top
    geom_line(aes(x = c(132, 150), y = c(132, 132)), size = 1.5) + # Bottom

    geom_line(aes(x = c(150, 150), y = c(132, 150)), size = 1.5) + # Left
    geom_line(aes(x = c(132, 132), y = c(132, 150)), size = 1.5) + # Right

    # Accent Box 3
    geom_line(aes(x = c(-150, -132), y = c(-150, -150)), size = 1.5) + # Top
    geom_line(aes(x = c(-150, -132), y = c(-132, -132)), size = 1.5) + # Bottom

    geom_line(aes(x = c(-150, -150), y = c(-132, -150)), size = 1.5) + # Left
    geom_line(aes(x = c(-132, -132), y = c(-132, -150)), size = 1.5) + # Right

    # Accent Box 4
    geom_line(aes(x = c(132, 150), y = c(-150, -150)), size = 1.5) + # Top
    geom_line(aes(x = c(132, 150), y = c(-132, -132)), size = 1.5) + # Bottom

    geom_line(aes(x = c(150, 150), y = c(-132, -150)), size = 1.5) + # Left
    geom_line(aes(x = c(132, 132), y = c(-132, -150)), size = 1.5) + # Right


    # Map Background Image 1
    annotation_raster(as.raster(image_trim(image_read(map_1))), xmin = -129 , ymin = 61, xmax = -6, ymax = 129)+

    # Map Background Image 2
    annotation_raster(as.raster(image_trim(image_read(map_2))), xmin = 5 , ymin = 61, xmax = 129, ymax = 129)+

    # Map Background Image 3
    annotation_raster(as.raster(image_trim(image_read(map_3))), xmin = -129 , ymin = -19, xmax = -6, ymax = 49)+

    # Map Background Image 4
    annotation_raster(as.raster(image_trim(image_read(map_4))), xmin = 5 , ymin = -19, xmax = 129, ymax = 49)+

    # Map Name 1
    annotate("text", x = 0, y = -50, label = label_top, family = "Aerologica" , size = 15, colour = "#FF0000") +

    annotate("text", x = 0, y = -100, label = label_bottom, family = "Aerologica" , size = 15, colour = "#FF0000") +


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


#' Highlight the map the user selects
#'
#' @param map_1 Map 1
#' @param map_2 Map 2
#' @param map_3 Map 3
#' @param map_4 Map 4
#' @param insidebackground Path to background image for the map screen
#' @param label_top # Top text for the map
#' @param label_bottom Bottom text for the map
#' @param selected_number Select a map slot number between 1 and 4
#'
#' @return
#' @export
#'
#' @examples
map_selected <- function (map_1, map_2, map_3, map_4, insidebackground, label_top = "GAME", label_bottom = "PLAYER", selected_number) {

  ggplot() +

    annotation_raster(as.raster(image_trim(image_read(insidebackground))), xmin = -150, ymin = -150, xmax = 150, ymax = 150)+

    # Map 1 box
    geom_line(aes(x = c(-130, -5), y = c(130, 130)), size = 1.5) + # Top
    geom_line(aes(x = c(-130, -5), y = c(60, 60)), size = 1.5) + # Bottom

    geom_line(aes(x = c(-130, -130), y = c(60, 130)), size = 1.5) + # Left
    geom_line(aes(x = c(-5, -5), y = c(60, 130)), size = 1.5) + # Right


    # Map 2 box
    geom_line(aes(x = c(130, 5), y = c(130, 130)), size = 1.5) + # Top
    geom_line(aes(x = c(130, 5), y = c(60, 60)), size = 1.5) + # Bottom

    geom_line(aes(x = c(130, 130), y = c(60, 130)), size = 1.5) + # Left
    geom_line(aes(x = c(5, 5), y = c(60, 130)), size = 1.5) + # Right


    # Map 3 box
    geom_line(aes(x = c(-130, -5), y = c(50, 50)), size = 1.5) + # Top
    geom_line(aes(x = c(-130, -5), y = c(-20, -20)), size = 1.5) + # Bottom

    geom_line(aes(x = c(-130, -130), y = c(-20, 50)), size = 1.5) + # Left
    geom_line(aes(x = c(-5, -5), y = c(-20, 50)), size = 1.5) + # Right


    # Map 4 box
    geom_line(aes(x = c(130, 5), y = c(50, 50)), size = 1.5) + # Top
    geom_line(aes(x = c(130, 5), y = c(-20, -20)), size = 1.5) + # Bottom

    geom_line(aes(x = c(130, 130), y = c(-20, 50)), size = 1.5) + # Left
    geom_line(aes(x = c(5, 5), y = c(-20, 50)), size = 1.5) + # Right


    geom_rect(aes(xmin =-150, xmax = 150, ymin = 132, ymax = 150), fill = "#0000FF", alpha = 1)+

    geom_rect(aes(xmin =-150, xmax = 150, ymin = 140, ymax = 150), fill = "#FF0000", alpha = 1)+


    geom_rect(aes(xmin =-150, xmax = 150, ymin = -150, ymax = -132), fill = "#0000FF", alpha = 1)+

    geom_rect(aes(xmin =-150, xmax = 150, ymin = -150, ymax = -140), fill = "#FF0000", alpha = 1)+


    geom_rect(aes(xmin =-150, xmax = -132, ymin = -150, ymax = 150), fill = "#0000FF", alpha = 1)+

    geom_rect(aes(xmin =-150, xmax = -140, ymin = -132, ymax = 132), fill = "#FF0000", alpha = 1)+


    geom_rect(aes(xmin = 132, xmax = 150, ymin = -150, ymax = 150), fill = "#0000FF", alpha = 1)+

    geom_rect(aes(xmin = 140, xmax = 150, ymin = -132, ymax = 132), fill = "#FF0000", alpha = 1)+

    # Accent Box 1
    geom_line(aes(x = c(-150, -132), y = c(150, 150)), size = 1.5) + # Top
    geom_line(aes(x = c(-150, -132), y = c(132, 132)), size = 1.5) + # Bottom

    geom_line(aes(x = c(-150, -150), y = c(132, 150)), size = 1.5) + # Left
    geom_line(aes(x = c(-132, -132), y = c(132, 150)), size = 1.5) + # Right

    # Accent Box 2
    geom_line(aes(x = c(132, 150), y = c(150, 150)), size = 1.5) + # Top
    geom_line(aes(x = c(132, 150), y = c(132, 132)), size = 1.5) + # Bottom

    geom_line(aes(x = c(150, 150), y = c(132, 150)), size = 1.5) + # Left
    geom_line(aes(x = c(132, 132), y = c(132, 150)), size = 1.5) + # Right

    # Accent Box 3
    geom_line(aes(x = c(-150, -132), y = c(-150, -150)), size = 1.5) + # Top
    geom_line(aes(x = c(-150, -132), y = c(-132, -132)), size = 1.5) + # Bottom

    geom_line(aes(x = c(-150, -150), y = c(-132, -150)), size = 1.5) + # Left
    geom_line(aes(x = c(-132, -132), y = c(-132, -150)), size = 1.5) + # Right

    # Accent Box 4
    geom_line(aes(x = c(132, 150), y = c(-150, -150)), size = 1.5) + # Top
    geom_line(aes(x = c(132, 150), y = c(-132, -132)), size = 1.5) + # Bottom

    geom_line(aes(x = c(150, 150), y = c(-132, -150)), size = 1.5) + # Left
    geom_line(aes(x = c(132, 132), y = c(-132, -150)), size = 1.5) + # Right


    # Map Background Image 1
    annotation_raster(as.raster(image_trim(image_read(map_1))), xmin = -129 , ymin = 61, xmax = -6, ymax = 129)+

    # Map Background Image 2
    annotation_raster(as.raster(image_trim(image_read(map_2))), xmin = 5 , ymin = 61, xmax = 129, ymax = 129)+

    # Map Background Image 3
    annotation_raster(as.raster(image_trim(image_read(map_3))), xmin = -129 , ymin = -19, xmax = -6, ymax = 49)+

    # Map Background Image 4
    annotation_raster(as.raster(image_trim(image_read(map_4))), xmin = 5 , ymin = -19, xmax = 129, ymax = 49)+

    # Map Highlight


    {if(selected_number == 1)geom_rect(aes(xmin = -129 , ymin = 61, xmax = -6, ymax = 129), fill = "#0000FF", alpha = 0.65)}+
    {if(selected_number == 2)geom_rect(aes(xmin = 5 , ymin = 61, xmax = 129, ymax = 129), fill = "#0000FF", alpha = 0.65)}+
    {if(selected_number == 3)geom_rect(aes(xmin = -129 , ymin = -19, xmax = -6, ymax = 49), fill = "#0000FF", alpha = 0.65)}+
    {if(selected_number == 4)geom_rect(aes(xmin = -5 , ymin = -19, xmax = 129, ymax = 49), fill = "#0000FF", alpha = 0.65)}+

    # Map Name 1
    annotate("text", x = 0, y = -50, label = label_top, family = "Aerologica" , size = 15, colour = "#FF0000") +

    annotate("text", x = 0, y = -100, label = label_bottom, family = "Aerologica" , size = 15, colour = "#FF0000") +


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
