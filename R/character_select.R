#' Draw the 16 character battle menu
#'
#' @param inside_background Background image for the select screen
#' @param media_ps List of pngs to load
#'
#' @return
#' @export
#'
#' @examples
character_select_16 <- function (inside_background, media_ps) {

  ggplot() +

    annotation_raster(
      readPNG(inside_background, native = T),
      xmin = -150,
      ymin = -150,
      xmax = 150,
      ymax = 150
    ) +

    #P1 Image Box
    geom_line(
      aes(x = c(-145, -79), y = c(145, 145)),
      size = 2.5
    ) + # Top

    geom_line(
      aes(x = c(-145, -79), y = c(79, 79)),
      size = 2.5
    ) + # Bottom

    geom_line(
      aes(x = c(-145, -145), y = c(79, 145)),
      size = 2.5
    ) + # Left

    geom_line(
      aes(x = c(-79, -79), y = c(79, 145)),
      size = 2.5
    ) + # Right

    #P2 Image Box
    geom_line(aes(
      x = c(-69, -3), y = c(145, 145)),
      size = 2.5
    ) + # Top

    geom_line(
      aes(x = c(-69, -3), y = c(79, 79)),
      size = 2.5
    ) + # Bottom

    geom_line(
      aes(x = c(-69, -69), y = c(79, 145)),
      size = 2.5
    ) + # Left
    geom_line(
      aes(x = c(-3, -3), y = c(79, 145)),
      size = 2.5
    ) + # Right

    #P3 Image Box
    geom_line(
      aes(x = c(3, 69), y = c(145, 145)),
      size = 2.5
    ) + # Top

    geom_line(
      aes(x = c(3, 69), y = c(79, 79)),
      size = 2.5
    ) + # Bottom

    geom_line(
      aes(x = c(3, 3), y = c(79, 145)),
      size = 2.5
    ) + # Left

    geom_line(
      aes(x = c(69, 69), y = c(79, 145)),
      size = 2.5
    ) + # Right

    #P4 Image Box
    geom_line(
      aes(x = c(79, 145), y = c(145, 145)),
      size = 2.5
    ) + # Top

    geom_line(
      aes(x = c(79, 145), y = c(79, 79)),
      size = 2.5
    ) + # Bottom

    geom_line(
      aes(x = c(79, 79), y = c(79, 145)),
      size = 2.5
    ) + # Left

    geom_line(
      aes(x = c(145, 145), y = c(79, 145)),
      size = 2.5
    ) + # Right

    annotation_raster(as.raster(image_trim(image_read(media_ps[1]))), xmin = -144 , ymin = 80, xmax = -80, ymax = 144)+
    annotation_raster(as.raster(image_trim(image_read(media_ps[2]))), xmin = -68 , ymin = 80, xmax = -4, ymax = 144)+
    annotation_raster(as.raster(image_trim(image_read(media_ps[3]))), xmin = 4 , ymin = 80, xmax = 68, ymax = 144)+
    annotation_raster(as.raster(image_trim(image_read(media_ps[4]))), xmin = 80 , ymin = 80, xmax = 144, ymax = 144)+


    #P5 Image Box
    geom_line(
      aes(x = c(-145, -79), y = c(69, 69)),
      size = 2.5
    ) + # Top

    geom_line(
      aes(x = c(-145, -79), y = c(3, 3)),
      size = 2.5
    ) + # Bottom

    geom_line(
      aes(x = c(-145, -145), y = c(3, 69)),
      size = 2.5
    ) + # Left

    geom_line(
      aes(x = c(-79, -79), y = c(3, 69)),
      size = 2.5
    ) + # Right

    #P6 Image Box
    geom_line(aes(
      x = c(-69, -3), y = c(69, 69)),
      size = 2.5
    ) + # Top

    geom_line(
      aes(x = c(-69, -3), y = c(3, 3)),
      size = 2.5
    ) + # Bottom

    geom_line(
      aes(x = c(-69, -69), y = c(3, 69)),
      size = 2.5
    ) + # Left
    geom_line(
      aes(x = c(-3, -3), y = c(3, 69)),
      size = 2.5
    ) + # Right

    #P7 Image Box
    geom_line(
      aes(x = c(3, 69), y = c(69, 69)),
      size = 2.5
    ) + # Top

    geom_line(
      aes(x = c(3, 69), y = c(3, 3)),
      size = 2.5
    ) + # Bottom

    geom_line(
      aes(x = c(3, 3), y = c(3, 69)),
      size = 2.5
    ) + # Left

    geom_line(
      aes(x = c(69, 69), y = c(3, 69)),
      size = 2.5
    ) + # Right

    #P8 Image Box
    geom_line(
      aes(x = c(79, 145), y = c(69, 69)),
      size = 2.5
    ) + # Top

    geom_line(
      aes(x = c(79, 145), y = c(3, 3)),
      size = 2.5
    ) + # Bottom

    geom_line(
      aes(x = c(79, 79), y = c(3, 69)),
      size = 2.5
    ) + # Left

    geom_line(
      aes(x = c(145, 145), y = c(3, 69)),
      size = 2.5
    ) + # Right

    annotation_raster(as.raster(image_trim(image_read(media_ps[5]))), xmin = -144 , ymin = 4, xmax = -80, ymax = 68)+
    annotation_raster(as.raster(image_trim(image_read(media_ps[6]))), xmin = -68 , ymin = 4, xmax = -4, ymax = 68)+
    annotation_raster(as.raster(image_trim(image_read(media_ps[7]))), xmin = 4 , ymin = 4, xmax = 68, ymax = 68)+
    annotation_raster(as.raster(image_trim(image_read(media_ps[8]))), xmin = 80 , ymin = 4, xmax = 144, ymax = 68)+

    #P9 Image Box
    geom_line(
      aes(x = c(-145, -79), y = c(-3, -3)),
      size = 2.5
    ) + # Top

    geom_line(
      aes(x = c(-145, -79), y = c(-69, -69)),
      size = 2.5
    ) + # Bottom

    geom_line(
      aes(x = c(-145, -145), y = c(-69, -3)),
      size = 2.5
    ) + # Left

    geom_line(
      aes(x = c(-79, -79), y = c(-69, -3)),
      size = 2.5
    ) + # Right

    #P10 Image Box
    geom_line(aes(
      x = c(-69, -3), y = c(-3, -3)),
      size = 2.5
    ) + # Top

    geom_line(
      aes(x = c(-69, -3), y = c(-69, -69)),
      size = 2.5
    ) + # Bottom

    geom_line(
      aes(x = c(-69, -69), y = c(-69, -3)),
      size = 2.5
    ) + # Left
    geom_line(
      aes(x = c(-3, -3), y = c(-69, -3)),
      size = 2.5
    ) + # Right

    #P11 Image Box
    geom_line(
      aes(x = c(3, 69), y = c(-3, -3)),
      size = 2.5
    ) + # Top

    geom_line(
      aes(x = c(3, 69), y = c(-69, -69)),
      size = 2.5
    ) + # Bottom

    geom_line(
      aes(x = c(3, 3), y = c(-69, -3)),
      size = 2.5
    ) + # Left

    geom_line(
      aes(x = c(69, 69), y = c(-69, -3)),
      size = 2.5
    ) + # Right

    #P12 Image Box
    geom_line(
      aes(x = c(79, 145), y = c(-3, -3)),
      size = 2.5
    ) + # Top

    geom_line(
      aes(x = c(79, 145), y = c(-69, -69)),
      size = 2.5
    ) + # Bottom

    geom_line(
      aes(x = c(79, 79), y = c(-69, -3)),
      size = 2.5
    ) + # Left

    geom_line(
      aes(x = c(145, 145), y = c(-69, -3)),
      size = 2.5
    ) + # Right

    annotation_raster(as.raster(image_trim(image_read(media_ps[9]))), xmin = -144 , ymin = -68, xmax = -80, ymax = -4)+
    annotation_raster(as.raster(image_trim(image_read(media_ps[10]))), xmin = -68 , ymin = -68, xmax = -4, ymax = -4)+
    annotation_raster(as.raster(image_trim(image_read(media_ps[11]))), xmin = 4 , ymin = -68, xmax = 68, ymax = -4)+
    annotation_raster(as.raster(image_trim(image_read(media_ps[12]))), xmin = 80 , ymin = -68, xmax = 144, ymax = -4)+

    #P9 Image Box
    geom_line(
      aes(x = c(-145, -79), y = c(-79, -79)),
      size = 2.5
    ) + # Top

    geom_line(
      aes(x = c(-145, -79), y = c(-145, -145)),
      size = 2.5
    ) + # Bottom

    geom_line(
      aes(x = c(-145, -145), y = c(-145, -79)),
      size = 2.5
    ) + # Left

    geom_line(
      aes(x = c(-79, -79), y = c(-145, -79)),
      size = 2.5
    ) + # Right

    #P10 Image Box
    geom_line(aes(
      x = c(-69, -3), y = c(-79, -79)),
      size = 2.5
    ) + # Top

    geom_line(
      aes(x = c(-69, -3), y = c(-145, -145)),
      size = 2.5
    ) + # Bottom

    geom_line(
      aes(x = c(-69, -69), y = c(-145, -79)),
      size = 2.5
    ) + # Left
    geom_line(
      aes(x = c(-3, -3), y = c(-145, -79)),
      size = 2.5
    ) + # Right

    #P11 Image Box
    geom_line(
      aes(x = c(3, 69), y = c(-79, -79)),
      size = 2.5
    ) + # Top

    geom_line(
      aes(x = c(3, 69), y = c(-145, -145)),
      size = 2.5
    ) + # Bottom

    geom_line(
      aes(x = c(3, 3), y = c(-145, -79)),
      size = 2.5
    ) + # Left

    geom_line(
      aes(x = c(69, 69), y = c(-145, -79)),
      size = 2.5
    ) + # Right

    #P12 Image Box
    geom_line(
      aes(x = c(79, 145), y = c(-79, -79)),
      size = 2.5
    ) + # Top

    geom_line(
      aes(x = c(79, 145), y = c(-145, -145)),
      size = 2.5
    ) + # Bottom

    geom_line(
      aes(x = c(79, 79), y = c(-145, -79)),
      size = 2.5
    ) + # Left

    geom_line(
      aes(x = c(145, 145), y = c(-145, -79)),
      size = 2.5
    ) + # Right

    annotation_raster(as.raster(image_trim(image_read(media_ps[13]))), xmin = -144 , ymin = -145, xmax = -80, ymax = -80)+
    annotation_raster(as.raster(image_trim(image_read(media_ps[14]))), xmin = -68 , ymin = -145, xmax = -4, ymax = -80)+
    annotation_raster(as.raster(image_trim(image_read(media_ps[15]))), xmin = 4 , ymin = -145, xmax = 68, ymax = -80)+
    annotation_raster(as.raster(image_trim(image_read(media_ps[16]))), xmin = 80 , ymin = -145, xmax = 144, ymax = -80)+

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


#' Highlights 1 of 16 players in the 16 player select screen
#'
#' @param selected_number Select a character slot number between 1 and 16
#'
#' @return
#' @export
#'
#' @examples
character_select_16_selected <- function (selected_number) {
  ggplot() +

    #P1 Image Box
    geom_line(
      aes(x = c(-145, -79), y = c(145, 145)),
      color = ifelse(selected_number == 1, "#FF0000", "#000000"),
      size = 2.5
    ) + # Top

    geom_line(
      aes(x = c(-145, -79), y = c(79, 79)),
      color = ifelse(selected_number == 1, "#FF0000", "#000000"),
      size = 2.5
    ) + # Bottom

    geom_line(
      aes(x = c(-145, -145), y = c(79, 145)),
      color = ifelse(selected_number == 1, "#FF0000", "#000000"),
      size = 2.5
    ) + # Left

    geom_line(
      aes(x = c(-79, -79), y = c(79, 145)),
      color = ifelse(selected_number == 1, "#FF0000", "#000000"),
      size = 2.5
    ) + # Right

    #P2 Image Box
    geom_line(aes(
      x = c(-69, -3), y = c(145, 145)),
      color = ifelse(selected_number == 2, "#FF0000", "#000000"),
      size = 2.5
    ) + # Top

    geom_line(
      aes(x = c(-69, -3), y = c(79, 79)),
      color = ifelse(selected_number == 2, "#FF0000", "#000000"),
      size = 2.5
    ) + # Bottom

    geom_line(
      aes(x = c(-69, -69), y = c(79, 145)),
      color = ifelse(selected_number == 2, "#FF0000", "#000000"),
      size = 2.5
    ) + # Left
    geom_line(
      aes(x = c(-3, -3), y = c(79, 145)),
      color = ifelse(selected_number == 2, "#FF0000", "#000000"),
      size = 2.5
    ) + # Right

    #P3 Image Box
    geom_line(
      aes(x = c(3, 69), y = c(145, 145)),
      color = ifelse(selected_number == 3, "#FF0000", "#000000"),
      size = 2.5
    ) + # Top

    geom_line(
      aes(x = c(3, 69), y = c(79, 79)),
      color = ifelse(selected_number == 3, "#FF0000", "#000000"),
      size = 2.5
    ) + # Bottom

    geom_line(
      aes(x = c(3, 3), y = c(79, 145)),
      color = ifelse(selected_number == 3, "#FF0000", "#000000"),
      size = 2.5
    ) + # Left

    geom_line(
      aes(x = c(69, 69), y = c(79, 145)),
      color = ifelse(selected_number == 3, "#FF0000", "#000000"),
      size = 2.5
    ) + # Right

    #P4 Image Box
    geom_line(
      aes(x = c(79, 145), y = c(145, 145)),
      color = ifelse(selected_number == 4, "#FF0000", "#000000"),
      size = 2.5
    ) + # Top

    geom_line(
      aes(x = c(79, 145), y = c(79, 79)),
      color = ifelse(selected_number == 4, "#FF0000", "#000000"),
      size = 2.5
    ) + # Bottom

    geom_line(
      aes(x = c(79, 79), y = c(79, 145)),
      color = ifelse(selected_number == 4, "#FF0000", "#000000"),
      size = 2.5
    ) + # Left

    geom_line(
      aes(x = c(145, 145), y = c(79, 145)),
      color = ifelse(selected_number == 4, "#FF0000", "#000000"),
      size = 2.5
    ) + # Right

    {if(selected_number == 1)geom_rect(aes(xmin = -144 , ymin = 80, xmax = -80, ymax = 144), fill = "#FF0000", alpha = 0.20)}+
    {if(selected_number == 2)geom_rect(aes(xmin = -68 , ymin = 80, xmax = -4, ymax = 144), fill = "#FF0000", alpha = 0.20)}+
    {if(selected_number == 3)geom_rect(aes(xmin = 4 , ymin = 80, xmax = 68, ymax = 144), fill = "#FF0000", alpha = 0.20)}+
    {if(selected_number == 4)geom_rect(aes(xmin = 80 , ymin = 80, xmax = 144, ymax = 144), fill = "#FF0000", alpha = 0.20)}+


    #P5 Image Box
    geom_line(
      aes(x = c(-145, -79), y = c(69, 69)),
      color = ifelse(selected_number == 5, "#FF0000", "#000000"),
      size = 2.5
    ) + # Top

    geom_line(
      aes(x = c(-145, -79), y = c(3, 3)),
      color = ifelse(selected_number == 5, "#FF0000", "#000000"),
      size = 2.5
    ) + # Bottom

    geom_line(
      aes(x = c(-145, -145), y = c(3, 69)),
      color = ifelse(selected_number == 5, "#FF0000", "#000000"),
      size = 2.5
    ) + # Left

    geom_line(
      aes(x = c(-79, -79), y = c(3, 69)),
      color = ifelse(selected_number == 5, "#FF0000", "#000000"),
      size = 2.5
    ) + # Right

    #P6 Image Box
    geom_line(aes(
      x = c(-69, -3), y = c(69, 69)),
      color = ifelse(selected_number == 6, "#FF0000", "#000000"),
      size = 2.5
    ) + # Top

    geom_line(
      aes(x = c(-69, -3), y = c(3, 3)),
      color = ifelse(selected_number == 6, "#FF0000", "#000000"),
      size = 2.5
    ) + # Bottom

    geom_line(
      aes(x = c(-69, -69), y = c(3, 69)),
      color = ifelse(selected_number == 6, "#FF0000", "#000000"),
      size = 2.5
    ) + # Left
    geom_line(
      aes(x = c(-3, -3), y = c(3, 69)),
      color = ifelse(selected_number == 6, "#FF0000", "#000000"),
      size = 2.5
    ) + # Right

    #P7 Image Box
    geom_line(
      aes(x = c(3, 69), y = c(69, 69)),
      color = ifelse(selected_number == 7, "#FF0000", "#000000"),
      size = 2.5
    ) + # Top

    geom_line(
      aes(x = c(3, 69), y = c(3, 3)),
      color = ifelse(selected_number == 7, "#FF0000", "#000000"),
      size = 2.5
    ) + # Bottom

    geom_line(
      aes(x = c(3, 3), y = c(3, 69)),
      color = ifelse(selected_number == 7, "#FF0000", "#000000"),
      size = 2.5
    ) + # Left

    geom_line(
      aes(x = c(69, 69), y = c(3, 69)),
      color = ifelse(selected_number == 7, "#FF0000", "#000000"),
      size = 2.5
    ) + # Right

    #P8 Image Box
    geom_line(
      aes(x = c(79, 145), y = c(69, 69)),
      color = ifelse(selected_number == 8, "#FF0000", "#000000"),
      size = 2.5
    ) + # Top

    geom_line(
      aes(x = c(79, 145), y = c(3, 3)),
      color = ifelse(selected_number == 8, "#FF0000", "#000000"),
      size = 2.5
    ) + # Bottom

    geom_line(
      aes(x = c(79, 79), y = c(3, 69)),
      color = ifelse(selected_number == 8, "#FF0000", "#000000"),
      size = 2.5
    ) + # Left

    geom_line(
      aes(x = c(145, 145), y = c(3, 69)),
      color = ifelse(selected_number == 8, "#FF0000", "#000000"),
      size = 2.5
    ) + # Right

    {if(selected_number == 5)geom_rect(aes(xmin = -144 , ymin = 4, xmax = -80, ymax = 68), fill = "#FF0000", alpha = 0.20)}+
    {if(selected_number == 6)geom_rect(aes(xmin = -68 , ymin = 4, xmax = -4, ymax = 68), fill = "#FF0000", alpha = 0.20)}+
    {if(selected_number == 7)geom_rect(aes(xmin = 4 , ymin = 4, xmax = 68, ymax = 68), fill = "#FF0000", alpha = 0.20)}+
    {if(selected_number == 8)geom_rect(aes(xmin = 80 , ymin = 4, xmax = 144, ymax = 68), fill = "#FF0000", alpha = 0.20)}+

    #P9 Image Box
    geom_line(
      aes(x = c(-145, -79), y = c(-3, -3)),
      color = ifelse(selected_number == 9, "#FF0000", "#000000"),
      size = 2.5
    ) + # Top

    geom_line(
      aes(x = c(-145, -79), y = c(-69, -69)),
      color = ifelse(selected_number == 9, "#FF0000", "#000000"),
      size = 2.5
    ) + # Bottom

    geom_line(
      aes(x = c(-145, -145), y = c(-69, -3)),
      color = ifelse(selected_number == 9, "#FF0000", "#000000"),
      size = 2.5
    ) + # Left

    geom_line(
      aes(x = c(-79, -79), y = c(-69, -3)),
      color = ifelse(selected_number == 9, "#FF0000", "#000000"),
      size = 2.5
    ) + # Right

    #P10 Image Box
    geom_line(aes(
      x = c(-69, -3), y = c(-3, -3)),
      color = ifelse(selected_number == 10, "#FF0000", "#000000"),
      size = 2.5
    ) + # Top

    geom_line(
      aes(x = c(-69, -3), y = c(-69, -69)),
      color = ifelse(selected_number == 10, "#FF0000", "#000000"),
      size = 2.5
    ) + # Bottom

    geom_line(
      aes(x = c(-69, -69), y = c(-69, -3)),
      color = ifelse(selected_number == 10, "#FF0000", "#000000"),
      size = 2.5
    ) + # Left
    geom_line(
      aes(x = c(-3, -3), y = c(-69, -3)),
      color = ifelse(selected_number == 10, "#FF0000", "#000000"),
      size = 2.5
    ) + # Right

    #P11 Image Box
    geom_line(
      aes(x = c(3, 69), y = c(-3, -3)),
      color = ifelse(selected_number == 11, "#FF0000", "#000000"),
      size = 2.5
    ) + # Top

    geom_line(
      aes(x = c(3, 69), y = c(-69, -69)),
      color = ifelse(selected_number == 11, "#FF0000", "#000000"),
      size = 2.5
    ) + # Bottom

    geom_line(
      aes(x = c(3, 3), y = c(-69, -3)),
      color = ifelse(selected_number == 11, "#FF0000", "#000000"),
      size = 2.5
    ) + # Left

    geom_line(
      aes(x = c(69, 69), y = c(-69, -3)),
      color = ifelse(selected_number == 11, "#FF0000", "#000000"),
      size = 2.5
    ) + # Right

    #P12 Image Box
    geom_line(
      aes(x = c(79, 145), y = c(-3, -3)),
      color = ifelse(selected_number == 12, "#FF0000", "#000000"),
      size = 2.5
    ) + # Top

    geom_line(
      aes(x = c(79, 145), y = c(-69, -69)),
      color = ifelse(selected_number == 12, "#FF0000", "#000000"),
      size = 2.5
    ) + # Bottom

    geom_line(
      aes(x = c(79, 79), y = c(-69, -3)),
      color = ifelse(selected_number == 12, "#FF0000", "#000000"),
      size = 2.5
    ) + # Left

    geom_line(
      aes(x = c(145, 145), y = c(-69, -3)),
      color = ifelse(selected_number == 12, "#FF0000", "#000000"),
      size = 2.5
    ) + # Right

    {if(selected_number == 9)geom_rect(aes(xmin = -144 , ymin = -68, xmax = -80, ymax = -4), fill = "#FF0000", alpha = 0.20)}+
    {if(selected_number == 10)geom_rect(aes(xmin = -68 , ymin = -68, xmax = -4, ymax = -4), fill = "#FF0000", alpha = 0.20)}+
    {if(selected_number == 11)geom_rect(aes(xmin = 4 , ymin = -68, xmax = 68, ymax = -4), fill = "#FF0000", alpha = 0.20)}+
    {if(selected_number == 12)geom_rect(aes(xmin = 80 , ymin = -68, xmax = 144, ymax = -4), fill = "#FF0000", alpha = 0.20)}+

    #P9 Image Box
    geom_line(
      aes(x = c(-145, -79), y = c(-79, -79)),
      color = ifelse(selected_number == 13, "#FF0000", "#000000"),
      size = 2.5
    ) + # Top

    geom_line(
      aes(x = c(-145, -79), y = c(-145, -145)),
      color = ifelse(selected_number == 13, "#FF0000", "#000000"),
      size = 2.5
    ) + # Bottom

    geom_line(
      aes(x = c(-145, -145), y = c(-145, -79)),
      color = ifelse(selected_number == 13, "#FF0000", "#000000"),
      size = 2.5
    ) + # Left

    geom_line(
      aes(x = c(-79, -79), y = c(-145, -79)),
      color = ifelse(selected_number == 13, "#FF0000", "#000000"),
      size = 2.5
    ) + # Right

    #P10 Image Box
    geom_line(aes(
      x = c(-69, -3), y = c(-79, -79)),
      color = ifelse(selected_number == 14, "#FF0000", "#000000"),
      size = 2.5
    ) + # Top

    geom_line(
      aes(x = c(-69, -3), y = c(-145, -145)),
      color = ifelse(selected_number == 14, "#FF0000", "#000000"),
      size = 2.5
    ) + # Bottom

    geom_line(
      aes(x = c(-69, -69), y = c(-145, -79)),
      color = ifelse(selected_number == 14, "#FF0000", "#000000"),
      size = 2.5
    ) + # Left
    geom_line(
      aes(x = c(-3, -3), y = c(-145, -79)),
      color = ifelse(selected_number == 14, "#FF0000", "#000000"),
      size = 2.5
    ) + # Right

    #P11 Image Box
    geom_line(
      aes(x = c(3, 69), y = c(-79, -79)),
      color = ifelse(selected_number == 15, "#FF0000", "#000000"),
      size = 2.5
    ) + # Top

    geom_line(
      aes(x = c(3, 69), y = c(-145, -145)),
      color = ifelse(selected_number == 15, "#FF0000", "#000000"),
      size = 2.5
    ) + # Bottom

    geom_line(
      aes(x = c(3, 3), y = c(-145, -79)),
      color = ifelse(selected_number == 15, "#FF0000", "#000000"),
      size = 2.5
    ) + # Left

    geom_line(
      aes(x = c(69, 69), y = c(-145, -79)),
      color = ifelse(selected_number == 15, "#FF0000", "#000000"),
      size = 2.5
    ) + # Right

    #P12 Image Box
    geom_line(
      aes(x = c(79, 145), y = c(-79, -79)),
      color = ifelse(selected_number == 16, "#FF0000", "#000000"),
      size = 2.5
    ) + # Top

    geom_line(
      aes(x = c(79, 145), y = c(-145, -145)),
      color = ifelse(selected_number == 16, "#FF0000", "#000000"),
      size = 2.5
    ) + # Bottom

    geom_line(
      aes(x = c(79, 79), y = c(-145, -79)),
      color = ifelse(selected_number == 16, "#FF0000", "#000000"),
      size = 2.5
    ) + # Left

    geom_line(
      aes(x = c(145, 145), y = c(-145, -79)),
      color = ifelse(selected_number == 16, "#FF0000", "#000000"),
      size = 2.5
    ) + # Right

    {if(selected_number == 13)geom_rect(aes(xmin = -144 , ymin = -145, xmax = -80, ymax = -80), fill = "#FF0000", alpha = 0.20)}+
    {if(selected_number == 14)geom_rect(aes(xmin = -68 , ymin = -145, xmax = -4, ymax = -80), fill = "#FF0000", alpha = 0.20)}+
    {if(selected_number == 15)geom_rect(aes(xmin = 4 , ymin = -145, xmax = 68, ymax = -80), fill = "#FF0000", alpha = 0.20)}+
    {if(selected_number == 16)geom_rect(aes(xmin = 80 , ymin = -145, xmax = 144, ymax = -80), fill = "#FF0000", alpha = 0.20)}+

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


#' Create the Story select screen for four characters
#'
#' @param scalarx scalar to change the amount of the profile picture is highlighted
#' @param selected_number number position between 1 and 4 to designate player to highlight
#' @param first First name label for player
#' @param last Last name label for player
#' @param media_p Player cutout to display
#' @param media_ps list of 4 profile pictures corresponding to the characters
#'
#' @return
#' @export
#'
#' @examples
character_select_4 <- function (scalarx, media_p, media_ps, selected_number, first = "PLAYER", last = "NAME") {

  ggplot() +

    geom_line(aes(x = c(-190, -130), y = c(190, 190)), size = 1.5) + # Top
    geom_line(aes(x = c(-190, -130), y = c(130, 130)), size = 1.5) + # Bottom

    geom_line(aes(x = c(-190, -190), y = c(130, 190)), size = 1.5) + # Left
    geom_line(aes(x = c(-130, -130), y = c(130, 190)), size = 1.5) + # Right




    geom_line(aes(x = c(-120, -60), y = c(190, 190)), size = 1.5) + # Top
    geom_line(aes(x = c(-120, -60), y = c(130, 130)), size = 1.5) + # Bottom

    geom_line(aes(x = c(-120, -120), y = c(130, 190)), size = 1.5) + # Left
    geom_line(aes(x = c(-60, -60), y = c(130, 190)), size = 1.5) + # Right




    geom_line(aes(x = c(-190, -130), y = c(120, 120)), size = 1.5) + # Top
    geom_line(aes(x = c(-190, -130), y = c(60, 60)), size = 1.5) + # Bottom

    geom_line(aes(x = c(-190, -190), y = c(120, 60)), size = 1.5) + # Left
    geom_line(aes(x = c(-130, -130), y = c(120, 60)), size = 1.5) + # Right



    geom_line(aes(x = c(-120, -60), y = c(120, 120)), size = 1.5) + # Top
    geom_line(aes(x = c(-120, -60), y = c(60, 60)), size = 1.5) + # Bottom

    geom_line(aes(x = c(-120, -120), y = c(120, 60)), size = 1.5) + # Left
    geom_line(aes(x = c(-60, -60), y = c(120, 60)), size = 1.5) + # Right


    annotate("text", x = -125, y = 35, label = first, family = "Aerologica" , size = 8, colour = "#0000FF") +

    annotate("text", x = -125, y = 5, label = last, family = "Aerologica" , size = 8, colour = "#FF0000") +

    annotate("text", x = -110, y = -30, label = "PLAYER BIO", family = "Aerologica" , size = 7, colour = "#000000") +

    annotate("text", x = -180, y = -60, label = "STR", family = "Aerologica" , size = 5, colour = "#000000") +

    geom_star(aes(x  = -150, y = -60), fill = "#000000", size=3) +

    geom_star(aes(x  = -120, y = -60), fill = "#000000", size=3) +

    geom_star(aes(x  = -90, y = -60), fill = "#000000", size=3) +

    #geom_star(aes(x  = -60, y = -60), fill = "#000000", size=3) +

    annotate("text", x = -180, y = -90, label = "SPD", family = "Aerologica" , size = 5, colour = "#000000") +

    geom_star(aes(x  = -150, y = -90), fill = "#000000", size=3) +

    #geom_star(aes(x  = -120, y = -90), fill = "#000000", size=3) +

    #geom_star(aes(x  = -90, y = -90), fill = "#000000", size=3) +

    #geom_star(aes(x  = -60, y = -90), fill = "#000000", size=3) +

    annotate("text", x = -180, y = -120, label = "AGL", family = "Aerologica" , size = 5, colour = "#000000") +

    geom_star(aes(x  = -150, y = -120), fill = "#000000", size=3) +

    geom_star(aes(x  = -120, y = -120), fill = "#000000", size=3) +

    #geom_star(aes(x  = -90, y = -120), fill = "#000000", size=3) +

    #geom_star(aes(x  = -60, y = -120), fill = "#000000", size=3) +

    annotate("text", x = -180, y = -150, label = "WPN", family = "Aerologica" , size = 5, colour = "#000000") +

    annotate("text", x = -75, y = -150, label = "DUMP TRUCK", family = "Aerologica" , size = 5, colour = "#0000FF") +

    annotate("text", x = -160, y = -180, label = "SPECIAL", family = "Aerologica" , size = 5, colour = "#000000") +

    annotate("text", x = -70, y = -180, label = "HIGH", family = "Aerologica" , size = 5, colour = "#FF0000") +



    geom_rect(aes(xmin =-250, xmax = 250, ymin = 200, ymax = 250), fill = "#0000FF", alpha = 1)+

    geom_rect(aes(xmin =-250, xmax = 250, ymin = 225, ymax = 250), fill = "#FF0000", alpha = 1)+


    geom_rect(aes(xmin =-250, xmax = 250, ymin = -250, ymax = -200), fill = "#0000FF", alpha = 1)+

    geom_rect(aes(xmin =-250, xmax = 250, ymin = -250, ymax = -225), fill = "#FF0000", alpha = 1)+


    geom_rect(aes(xmin =-250, xmax = -200, ymin = -250, ymax = 250), fill = "#0000FF", alpha = 1)+

    geom_rect(aes(xmin =-250, xmax = -225, ymin = -200, ymax = 200), fill = "#FF0000", alpha = 1)+


    geom_rect(aes(xmin = 200, xmax = 250, ymin = -250, ymax = 250), fill = "#0000FF", alpha = 1)+

    geom_rect(aes(xmin = 225, xmax = 250, ymin = -200, ymax = 200), fill = "#FF0000", alpha = 1)+

    annotation_raster(as.raster(image_trim(image_read(media_p))), xmin = -10 , ymin = -190, xmax = 195, ymax = 190)+

    annotation_raster(as.raster(image_trim(image_read(media_ps[1]))), xmin = -190 , ymin = 130, xmax = -130, ymax = 190)+

    annotation_raster(as.raster(image_trim(image_read(media_ps[2]))), xmin = -120 , ymin = 130, xmax = -60, ymax = 190)+

    annotation_raster(as.raster(image_trim(image_read(media_ps[3]))), xmin = -120 , ymin = 60, xmax = -60, ymax = 120)+

    annotation_raster(as.raster(image_trim(image_read(media_ps[4]))), xmin = -190 , ymin = 60, xmax = -130, ymax = 120)+

    {if(selected_number == 1)geom_rect(aes(xmin = -190, xmax = -130-scalarx, ymin = 130, ymax = 190), fill = "#002868", alpha = 0.65)}+
    {if(selected_number == 2)geom_rect(aes(xmin = -120, xmax = -60-scalarx, ymin = 130, ymax = 190), fill = "#002868", alpha = 0.65)}+
    {if(selected_number == 3)geom_rect(aes(xmin = -120, xmax = -60-scalarx, ymin = 60, ymax = 120), fill = "#002868", alpha = 0.65)}+
    {if(selected_number == 4)geom_rect(aes(xmin = -190, xmax = -130-scalarx, ymin = 60, ymax = 120), fill = "#002868", alpha = 0.65)}+


    # Create Box around whole image
    geom_line(aes(x = c(-250, 250), y = c(250, 250)), size = 1.5) + # Top
    geom_line(aes(x = c(-250, 250), y = c(-250, -250)), size = 1.5) + # Bottom

    geom_line(aes(x = c(250, 250), y = c(250, -250)), size = 1.5) + # Left
    geom_line(aes(x = c(-250, -250), y = c(250, -250)), size = 1.5) + # Right

    # Accent Box 1
    geom_line(aes(x = c(-250, -200), y = c(250, 250)), size = 1.5) + # Top
    geom_line(aes(x = c(-250, -200), y = c(200, 200)), size = 1.5) + # Bottom

    geom_line(aes(x = c(-250, -250), y = c(200, 250)), size = 1.5) + # Left
    geom_line(aes(x = c(-200, -200), y = c(200, 250)), size = 1.5) + # Right

    # Accent Box 2
    geom_line(aes(x = c(200, 250), y = c(250, 250)), size = 1.5) + # Top
    geom_line(aes(x = c(200, 250), y = c(200, 200)), size = 1.5) + # Bottom

    geom_line(aes(x = c(250, 250), y = c(200, 250)), size = 1.5) + # Left
    geom_line(aes(x = c(200, 200), y = c(200, 250)), size = 1.5) + # Right

    # Accent Box 3
    geom_line(aes(x = c(-250, -200), y = c(-250, -250)), size = 1.5) + # Top
    geom_line(aes(x = c(-250, -200), y = c(-200, -200)), size = 1.5) + # Bottom

    geom_line(aes(x = c(-250, -250), y = c(-200, -250)), size = 1.5) + # Left
    geom_line(aes(x = c(-200, -200), y = c(-200, -250)), size = 1.5) + # Right

    # Accent Box 4
    geom_line(aes(x = c(200, 250), y = c(-250, -250)), size = 1.5) + # Top
    geom_line(aes(x = c(200, 250), y = c(-200, -200)), size = 1.5) + # Bottom

    geom_line(aes(x = c(250, 250), y = c(-200, -250)), size = 1.5) + # Left
    geom_line(aes(x = c(200, 200), y = c(-200, -250)), size = 1.5) + # Right


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
          axis.text.x = element_blank(), axis.text.y = element_blank())
}
