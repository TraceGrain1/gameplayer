#' Output the boot screen to dir
#'
#' @param path path to where the top level game working directory is
#' @param name name the user would like to give the screen with the default set as "title_screen"
#' @param screen variable with the stored plot
#'
#' @return
#' @export
#'
#' @examples
output_boot <- function (path, name = "boot_screen", screen) {
  png(paste0(path, "/Game_Screens/Game_Load_Up_Screen/", name,".png"), width = 485, height = 495)
  print(screen)
  dev.off()
}


#' Output the title screen to dir
#'
#' @param path path to where the top level game working directory is
#' @param name name the user would like to give the screen with the default set as "title_screen"
#' @param screen variable with the stored plot
#'
#' @return
#' @export
#'
#' @examples
output_title <- function (path, name = "title_screen", screen) {
  png(paste0(path, "/Game_Screens/Game_Cover/", name,".png"), width = 485, height = 495)
  print(screen)
  dev.off()
}


#' Output the main menu screen to dir
#'
#' @param path path to where the top level game working directory is
#' @param name name the user would like to give the screen with the default set as "title_screen"
#' @param screen variable with the stored plot
#'
#' @return
#' @export
#'
#' @examples
output_main_menu <- function (path, name, screen) {
  png(paste0(path, "/Game_Screens/Game_Mode/", name,".png"), width = 485, height = 495)
  print(screen)
  dev.off()
}



#' Output the character select screen to dir
#'
#' @param path path to where the top level game working directory is
#' @param name name the user would like to give the screen with the default set as "title_screen"
#' @param screen variable with the stored plot
#'
#' @return
#' @export
#'
#' @examples
output_battle_character_select <- function (path, name = "Player", number = 1, screen) {
  png(paste0(path, "/Game_Mode_Battle/Character_Select/", name, "_", number,".png"), width = 485, height = 495)
  print(screen)
  dev.off()
}

#' Output the character select screen to dir
#'
#' @param path path to where the top level game working directory is
#' @param name name the user would like to give the screen with the default set as "title_screen"
#' @param screen variable with the stored plot
#'
#' @return
#' @export
#'
#' @examples
output_story_character_select <- function (path, name = "Player", number = 1, screen) {
  png(paste0(path, "/Game_Mode_Story/Character_Select/", name, "_", number,".png"), width = 485, height = 495)
  print(screen)
  dev.off()
}



#' Output the character versus screen to dir
#'
#' @param path path to where the top level game working directory is
#' @param name name the user would like to give the screen with the default set as "title_screen"
#' @param screen variable with the stored plot
#'
#' @return
#' @export
#'
#' @examples
output_vs <- function (path, name_1 = "Player",  name_2 = "Player", number_1 = 1, number_2 = 1, screen) {
  png(paste0(path, "/Game_Mode_Battle/Character_Versus/", name_1, "_", number_1, "_", name_2, "_", number_2,".png"), width = 485, height = 495)
  print(screen)
  dev.off()
}

#' Output the map select screen to dir
#'
#' @param path path to where the top level game working directory is
#' @param name name the user would like to give the screen with the default set as "title_screen"
#' @param screen variable with the stored plot
#'
#' @return
#' @export
#'
#' @examples
output_map_menu <- function (path, name = "Map_Select", number = 1, screen) {
  png(paste0(path, "/Game_Mode_Battle/Map_Photos/", name, "_", number,".png"), width = 485, height = 495)
  print(screen)
  dev.off()
}


#' Title
#'
#' @param path
#' @param name
#' @param number_1
#' @param number_2
#'
#' @return
#' @export
#'
#' @examples
output_resized_sprites <- function(path, name, number_1, number_2, image) {
  image_write(image = image, path = paste0(path, "/Resized/", name, "_", number_1, "_", number_2, ".png"))
}


#' Scale the image to the correct size for battle mode
#'
#' @param image_path path to the image
#'
#' @return
#' @export
#'
#' @examples
scale_image_height <- function(image_path) {
  # Read the image
  img <- image_read(image_path)

  # Calculate the scaling factor to achieve a height of 300 pixels
  scaling_factor <- 300 / image_info(img)$height

  # Resize the image while maintaining the aspect ratio
  resized_img <- image_scale(img, paste0(scaling_factor * 100, "%"))

  return(resized_img)
}
