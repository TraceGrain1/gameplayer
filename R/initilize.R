#' Creates video game development environment
#'
#' @param path User specified working directory
#'
#' @return
#' @export
#'
#' @examples
video_game_init <- function (path) {
  setwd(path)

  ifelse(dir.exists("Fonts"), print("Dir exisits already. Moving on"),dir.create("Fonts"))

  ifelse(dir.exists("Game_Devices"), print("Dir exisits already. Moving on"),dir.create("Game_Devices"))

  ifelse(dir.exists("Game_Screens"), print("Dir exisits already. Moving on"),dir.create("Game_Screens"))
  ifelse(dir.exists("Game_Screens/Game_Cover"), print("Dir exisits already. Moving on"),dir.create("Game_Screens/Game_Cover"))
  ifelse(dir.exists("Game_Screens/Game_Load_Up_Screen"), print("Dir exisits already. Moving on"),dir.create("Game_Screens/Game_Load_Up_Screen"))
  ifelse(dir.exists("Game_Screens/Game_Mode"), print("Dir exisits already. Moving on"),dir.create("Game_Screens/Game_Mode"))
  ifelse(dir.exists("Game_Screens/Loading_Screen"), print("Dir exisits already. Moving on"),dir.create("Game_Screens/Loading_Screen"))

  ifelse(dir.exists("Raw_Sprites"), print("Dir exisits already. Moving on"),dir.create("Raw_Sprites"))
  ifelse(dir.exists("Raw_Sprites/Photos"), print("Dir exisits already. Moving on"),dir.create("Raw_Sprites/Photos"))
  ifelse(dir.exists("Raw_Sprites/Videos"), print("Dir exisits already. Moving on"),dir.create("Raw_Sprites/Videos"))
  ifelse(dir.exists("Raw_Sprites/Videos/Long_Videos"), print("Dir exisits already. Moving on"),dir.create("Raw_Sprites/Videos/Long_Videos"))
  ifelse(dir.exists("Raw_Sprites/Videos/Wide_Videos"), print("Dir exisits already. Moving on"),dir.create("Raw_Sprites/Videos/Wide_Videos"))

  ifelse(dir.exists("Resized"), print("Dir exisits already. Moving on"),dir.create("Resized"))
}


#' Make the sub directory folder structure for a battle and story mode game
#'
#' @param path User specified working directory
#'
#' @return
#' @export
#'
#' @examples
battle_story_game_init <- function (path) {
  setwd(path)

  dir.create("Game_Mode_Battle")
  dir.create("Game_Mode_Battle/Character_Select")
  dir.create("Game_Mode_Battle/Character_Versus")
  dir.create("Game_Mode_Battle/Map_Photos")
  dir.create("Raw_Sprites/Battle_Mode_Player_Select_Photos")
  dir.create("Raw_Sprites/Battle_Mode_Map_Select_Photos")



  dir.create("Game_Mode_Story")
  dir.create("Game_Mode_Story/Character_Select")
  dir.create("Raw_Sprites/Story_Mode_Player_Select_Photos")

}
