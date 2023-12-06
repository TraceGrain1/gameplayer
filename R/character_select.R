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
