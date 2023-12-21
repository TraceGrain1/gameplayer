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
  ifelse(dir.exists("Game_Screens/Loading_Screen/Loading_Screen_Video_1_Output"), print("Dir exisits already. Moving on"),dir.create("Game_Screens/Loading_Screen/Loading_Screen_Video_1_Output"))
  ifelse(dir.exists("Game_Screens/Loading_Screen/Loading_Screen_Video_2_Output"), print("Dir exisits already. Moving on"),dir.create("Game_Screens/Loading_Screen/Loading_Screen_Video_2_Output"))
  ifelse(dir.exists("Game_Screens/Loading_Screen/Loading_Screen_Video_3_Output"), print("Dir exisits already. Moving on"),dir.create("Game_Screens/Loading_Screen/Loading_Screen_Video_3_Output"))
  ifelse(dir.exists("Game_Screens/Loading_Screen/Loading_Screen_Video_4_Output"), print("Dir exisits already. Moving on"),dir.create("Game_Screens/Loading_Screen/Loading_Screen_Video_4_Output"))
  ifelse(dir.exists("Game_Screens/Loading_Screen/Loading_Screen_Video_5_Output"), print("Dir exisits already. Moving on"),dir.create("Game_Screens/Loading_Screen/Loading_Screen_Video_5_Output"))
  ifelse(dir.exists("Game_Screens/Loading_Screen/Loading_Screen_Video_6_Output"), print("Dir exisits already. Moving on"),dir.create("Game_Screens/Loading_Screen/Loading_Screen_Video_6_Output"))
  ifelse(dir.exists("Game_Screens/Loading_Screen/Loading_Screen_Video_7_Output"), print("Dir exisits already. Moving on"),dir.create("Game_Screens/Loading_Screen/Loading_Screen_Video_7_Output"))
  ifelse(dir.exists("Game_Screens/Loading_Screen/Loading_Screen_Video_8_Output"), print("Dir exisits already. Moving on"),dir.create("Game_Screens/Loading_Screen/Loading_Screen_Video_8_Output"))
  ifelse(dir.exists("Game_Screens/Loading_Screen/Loading_Screen_Video_9_Output"), print("Dir exisits already. Moving on"),dir.create("Game_Screens/Loading_Screen/Loading_Screen_Video_9_Output"))
  ifelse(dir.exists("Game_Screens/Loading_Screen/Loading_Screen_Video_10_Output"), print("Dir exisits already. Moving on"),dir.create("Game_Screens/Loading_Screen/Loading_Screen_Video_10_Output"))


  ifelse(dir.exists("Raw_Sprites"), print("Dir exisits already. Moving on"),dir.create("Raw_Sprites"))
  ifelse(dir.exists("Raw_Sprites/Photos"), print("Dir exisits already. Moving on"),dir.create("Raw_Sprites/Photos"))
  ifelse(dir.exists("Raw_Sprites/Photos/Title_Sprites"), print("Dir exisits already. Moving on"),dir.create("Raw_Sprites/Photos/Title_Sprites"))
  ifelse(dir.exists("Raw_Sprites/Photos/Menu_Sprites"), print("Dir exisits already. Moving on"),dir.create("Raw_Sprites/Photos/Menu_Sprites"))
  ifelse(dir.exists("Raw_Sprites/Photos/Logos_And_Misc"), print("Dir exisits already. Moving on"),dir.create("Raw_Sprites/Photos/Logos_And_Misc"))
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

  ifelse(dir.exists("Game_Mode_Battle"), print("Dir exisits already. Moving on"),dir.create("Game_Mode_Battle"))
  ifelse(dir.exists("Game_Mode_Battle/Character_Select"), print("Dir exisits already. Moving on"),dir.create("Game_Mode_Battle/Character_Select"))
  ifelse(dir.exists("Game_Mode_Battle/Character_Versus"), print("Dir exisits already. Moving on"),dir.create("Game_Mode_Battle/Character_Versus"))
  ifelse(dir.exists("Game_Mode_Battle/Map_Photos"), print("Dir exisits already. Moving on"),dir.create("Game_Mode_Battle/Map_Photos"))
  ifelse(dir.exists("Game_Mode_Battle/Map_Rendered"), print("Dir exisits already. Moving on"),dir.create("Game_Mode_Battle/Map_Rendered"))
  ifelse(dir.exists("Raw_Sprites/Photos/Battle_Mode_Player_Select_Photos"), print("Dir exisits already. Moving on"),dir.create("Raw_Sprites/Photos/Battle_Mode_Player_Select_Photos"))
  ifelse(dir.exists("Raw_Sprites/Photos/Battle_Mode_Map_Select_Photos"), print("Dir exisits already. Moving on"),dir.create("Raw_Sprites/Photos/Battle_Mode_Map_Select_Photos"))
  ifelse(dir.exists("Raw_Sprites/Photos/Battle_Mode_Character_Sprites"), print("Dir exisits already. Moving on"),dir.create("Raw_Sprites/Photos/Battle_Mode_Character_Sprites"))
  ifelse(dir.exists("Raw_Sprites/Photos/Fight_Sprites"), print("Dir exisits already. Moving on"),dir.create("Raw_Sprites/Photos/Fight_Sprites"))


  ifelse(dir.exists("Game_Mode_Story"), print("Dir exisits already. Moving on"),dir.create("Game_Mode_Story"))
  ifelse(dir.exists("Game_Mode_Story/Character_Select"), print("Dir exisits already. Moving on"),dir.create("Game_Mode_Story/Character_Select"))
  ifelse(dir.exists("Raw_Sprites/Photos/Story_Mode_Player_Select_Photos"), print("Dir exisits already. Moving on"),dir.create("Raw_Sprites/Photos/Story_Mode_Player_Select_Photos"))
  ifelse(dir.exists("Raw_Sprites/Photos/Story_Mode_Character_Sprites"), print("Dir exisits already. Moving on"),dir.create("Raw_Sprites/Photos/Story_Mode_Character_Sprites"))
}


