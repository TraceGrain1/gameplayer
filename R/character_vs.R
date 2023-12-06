#' Create the character versus screen with profile photos
#'
#' @param player_1_profile Path to profile picture for player one
#' @param player_1_cutout Path to cutout of player one character
#' @param player_2_profile Path to profile picture for player two
#' @param player_2_cutout Path to cutout of player two character
#' @param insidebackground Path to background image for the vs screen
#' @param label Title photo for top and bottom
#'
#' @return
#' @export
#'
#' @examples
character_vs_profiles <- function (player_1_profile, player_1_cutout, player_2_profile, player_2_cutout, insidebackground, label = "GAME PLAYER") {

  ggplot()+

    geom_rect(aes(xmin =-150, xmax = 150, ymin = 130, ymax = 150), fill = "#0000FF", alpha = 1)+

    geom_rect(aes(xmin =-150, xmax = 150, ymin = 135, ymax = 145), fill = "#FF0000", alpha = 1)+

    geom_rect(aes(xmin =-150, xmax = 150, ymin = -150, ymax = -130), fill = "#0000FF", alpha = 1)+

    geom_rect(aes(xmin =-150, xmax = 150, ymin = -145, ymax = -135), fill = "#FF0000", alpha = 1)+

    annotation_raster(as.raster(image_trim(image_read(insidebackground))), xmin = -150, ymin = -125, xmax = 150, ymax = 125)+

    # Player 1

    annotation_raster(as.raster(image_trim(image_read(player_1_cutout))), xmin = -150 , ymin = -125, xmax = -20, ymax = 125)+

    annotation_raster(as.raster(image_trim(image_read(player_1_profile))), xmin = -95 , ymin = -50, xmax = -5, ymax = 50)+

    geom_line(aes(x = c(-95, -5), y = c(50, 50)), size = 2.5) + # Bottom

    geom_line(aes(x = c(-95, -95), y = c(50, -50)), size = 2.5) + # Left

    geom_line(aes(x = c(-5, -5), y = c(50, -50)), size = 2.5) + # Right

    geom_line(aes(x = c(-95, -5), y = c(-50, -50)), size = 2.5) + # Bottom

    # Player 2

    annotation_raster(as.raster(image_trim(image_read(player_2_cutout))), xmin = 20 , ymin = -125, xmax = 150, ymax = 125)+

    annotation_raster(as.raster(image_trim(image_read(player_2_profile))), xmin = 5 , ymin = -50, xmax = 95, ymax = 50)+

    geom_line(aes(x = c(5, 95), y = c(50, 50)), size = 2.5) + # Bottom

    geom_line(aes(x = c(5, 5), y = c(50, -50)), size = 2.5) + # Left

    geom_line(aes(x = c(5, 95), y = c(-50, -50)), size = 2.5) + # Bottom

    geom_line(aes(x = c(95, 95), y = c(50, -50)), size = 2.5) + # Right


    annotate("text", x = 0, y = 140, label = label, family = "Aerologica" , size = 10) +

    annotate("text", x = 0, y = -140, label = label, family = "Aerologica" , size = 10) +

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
}



#' Create the character versus screen without profile photos
#'
#' @param player_1_profile Path to profile picture for player one
#' @param player_1_cutout Path to cutout of player one character
#' @param player_2_profile Path to profile picture for player two
#' @param player_2_cutout Path to cutout of player two character
#' @param insidebackground Path to background image for the vs screen
#' @param label Title photo for top and bottom
#'
#' @return
#' @export
#'
#' @examples
character_vs_no_profiles <- function (player_1_cutout, player_2_cutout, insidebackground, label = "GAME PLAYER") {

  ggplot()+

    geom_rect(aes(xmin =-150, xmax = 150, ymin = 130, ymax = 150), fill = "#0000FF", alpha = 1)+

    geom_rect(aes(xmin =-150, xmax = 150, ymin = 135, ymax = 145), fill = "#FF0000", alpha = 1)+

    geom_rect(aes(xmin =-150, xmax = 150, ymin = -150, ymax = -130), fill = "#0000FF", alpha = 1)+

    geom_rect(aes(xmin =-150, xmax = 150, ymin = -145, ymax = -135), fill = "#FF0000", alpha = 1)+

    annotation_raster(as.raster(image_trim(image_read(insidebackground))), xmin = -150, ymin = -125, xmax = 150, ymax = 125)+

    # Player 1

    annotation_raster(as.raster(image_trim(image_read(player_1_cutout))), xmin = -150 , ymin = -125, xmax = -20, ymax = 125)+

    # Player 2

    annotation_raster(as.raster(image_trim(image_read(player_2_cutout))), xmin = 20 , ymin = -125, xmax = 150, ymax = 125)+


    annotate("text", x = 0, y = 140, label = label, family = "Aerologica" , size = 10) +

    annotate("text", x = 0, y = -140, label = label, family = "Aerologica" , size = 10) +

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
}
