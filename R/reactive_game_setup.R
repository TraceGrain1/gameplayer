#' Creates game device for active game play
#'
#' @return
#' @export
#'
#' @examples
create_game_device <- function() {
  x11(type = 'dbcairo', antialias = 'default', width = 10, height = 7)
  dev.control('inhibit')
  nr <- nr_new(width = 1072, height = 726, fill = "grey98")
  nr_blit(nr = nr, game_device_nr, 0, 0)
  grid.raster(nr, interpolate = FALSE)
  new_dev <-  FALSE
  return_list <- list(nr = nr, new_dev = new_dev)
  return(return_list)
}

#' Title
#'
#' @return
#' @export
#'
#' @examples
turn_game_off <- function() {
  tryCatch({
    if (game_off == TRUE) {
      stop1 <- TRUE
      mode_name <- ""
      graphics.off()
      break
    }
    return_list <- list(stop1 = stop1, mode_name = mode_name)
    return(return_list)
  }, error=function(e){})
}

#' Title
#'
#' @return
#' @export
#'
#' @examples
quit_the_game <- function() {
  quit_game <- KeyboardCheckeR::getKeyboard()
  if (quit_game == "Shift|Q|") {
    game_off <- TRUE
    mode_name <- ""
    graphics.off()
    break
  }
}

#' Title
#'
#' @return
#' @export
#'
#' @examples
game_load_up <- function() {
  game_load_up_sample <- sample(1:1, 1, replace = FALSE)
  for(i in 1:length(list.files(path = paste0("Game_Screens/Game_Load_Up_Screen"), pattern = paste0(game_load_up_sample, "_")))){
    return_list <- turn_game_off()
    tryCatch({
      stop1 <- return_list$stop1
      mode_name <- return_list$mode_name
    }, error=function(e){})

    nr_blit(nr, png::readPNG(paste0("Game_Screens/Game_Load_Up_Screen/", game_load_up_sample,"_Game_Load_Up_Screen_", i,".png"), native = T), 294,96)
    dev.hold()
    grid.raster(nr, interpolate = FALSE)
    dev.flush()
    Sys.sleep(0.01)
  }
}

#' Title
#'
#' @return
#' @export
#'
#' @examples
game_loading_screen <- function() {
  load_screen_sample <- sample(1:10, size = 1, replace = FALSE)
  for(i in 1:length(list.files(path = paste0("Game_Screens/Loading_Screen/Loading_Screen_Video_", load_screen_sample,"_Output")))){
    if(game_off == TRUE){
      mode_name <- ""
      break
    }
    nr_blit(nr, png::readPNG(paste0("Game_Screens/Loading_Screen/Loading_Screen_Video_", load_screen_sample, "_Output/Loading_Screen_", i, ".png"), native = T), 294,96)
    dev.hold()
    grid.raster(nr, interpolate = FALSE)
    dev.flush()
    Sys.sleep(0.04)
  }
}

#' Title
#'
#' @return
#' @export
#'
#' @examples
game_start_screen <- function() {
  while (game_start == FALSE) {
    return_list <- turn_game_off()
    tryCatch({
      stop1 <- return_list$stop1
      mode_name <- return_list$mode_name
    }, error=function(e){})

    quit_game <- KeyboardCheckeR::getKeyboard()
    press_start <- KeyboardCheckeR::getKeyboard()
    quit_the_game()
    print(paste0("Press Start Menu Started. User Pressing ", press_start))
    print(paste0("Quit Game Button User Pressing ", quit_game))
    if(list.files("Game_Screens/Game_Cover") != 1 & start_on == TRUE){
      for(i in 1:length(list.files(path = "Game_Screens/Game_Cover"))){
        if(game_off == TRUE){
          mode_name <- ""
          break
        }
        nr_blit(nr, png::readPNG(paste0("Game_Screens/Game_Cover/title_screen_", i, ".png"), native = T), 294,96)
        dev.hold()
        grid.raster(nr, interpolate = FALSE)
        dev.flush()
        Sys.sleep(0.01)
        start_on <- FALSE
      }
    }
    if(list.files("Game_Screens/Game_Cover") == 1 & start_on == TRUE){
      nr_blit(nr, png::readPNG(source = "Game_Screens/Game_Cover/title_screen_1.png", native = T), 294,96)
      dev.hold()
      grid.raster(nr, interpolate = FALSE)
      dev.flush()
      Sys.sleep(0.1)
      start_on <- FALSE
    }

    if(press_start == "S|"){
      rm(press_start)
      game_start <- TRUE
    }
  }
}

#' Title
#'
#' @param mode1
#' @param mode2
#'
#' @return
#' @export
#'
#' @examples
mode_slots_function_2 <- function(mode1, mode2) {
  the_mode_slots <- list(
    list(mode1, mode2)
  )
  return(the_mode_slots)
}


#' Title
#'
#' @return
#' @export
#'
#' @examples
create_active_mode_slots <- function() {
  active_mode_slots <- unlist(mode_slots)
  active_mode <- data.frame(
    mode = "",
    number = 0
  )
  return_list <- list(active_mode_slots = active_mode_slots, active_mode = active_mode)
  return(return_list)
}


#' Title
#'
#' @return
#' @export
#'
#' @examples
game_mode_start <- function() {
  nr_blit(nr, mode_select_image_start_nr, 294,96)
  dev.hold()
  grid.raster(nr, interpolate = FALSE)
  dev.flush()
  Sys.sleep(0.01)
}

#' Title
#'
#' @return
#' @export
#'
#' @examples
game_mode_select_B_S <- function() {
  while (mode_select == FALSE){
    if(game_off == TRUE){
      mode_name <- ""
      break
    }

    quit_game <- KeyboardCheckeR::getKeyboard()
    if(quit_game == "Shift|Q|"){
      game_off <- TRUE
      mode_name <- ""
      graphics.off()
      break
    }
    mode_select_input <- KeyboardCheckeR::getKeyboard()
    print(paste0("Mode Select Started. User Pressing ", mode_select_input))
    while (mode_initiated == FALSE){
      if(game_off == TRUE){
        mode_name <- ""
        break
      }
      quit_game <- KeyboardCheckeR::getKeyboard()
      if(quit_game == "Shift|Q|"){
        game_off <- TRUE
        mode_name <- ""
        graphics.off()
        break
      }
      mode_select_input <- KeyboardCheckeR::getKeyboard()
      print(paste0("Mode Select Started. User Pressing ", mode_select_input))
      # Choose Mode Slot 1
      if(mode_select_input == "Right|"){
        if(active_mode$mode == ""){
          mode_select <-  TRUE
          mode_name <- active_mode_slots[1]
          active_mode$mode <- active_mode_slots[1]
          active_mode$number <- active_mode$number + 1
          mode_select_image_nr <- png::readPNG(paste0("Game_Screens/Game_Mode/", mode_name, ".png"), native = T)
          nr_blit(nr, mode_select_image_nr, 294,96)
          dev.hold()
          grid.raster(nr, interpolate = FALSE)
          dev.flush()
          Sys.sleep(0.75)
        }
        if(active_mode$mode != ""){
          mode_select <-  TRUE
          active_mode$number <- active_mode$number + 1
          if(active_mode$number > length(active_mode_slots)){active_mode$number <- 1}
          mode_name <- active_mode_slots[active_mode$number]
          mode_select_image_nr <- png::readPNG(paste0("Game_Screens/Game_Mode/", mode_name, ".png"), native = T)
          nr_blit(nr, mode_select_image_nr, 294,96)
          dev.hold()
          grid.raster(nr, interpolate = FALSE)
          dev.flush()
          Sys.sleep(0.5)
        }
      }

      if(mode_select_input == "Left|"){
        if(active_mode$mode == ""){
          mode_select <-  TRUE
          mode_name <- active_mode_slots[length(active_mode_slots)]
          active_mode$mode <- active_mode_slots[length(active_mode_slots)]
          active_mode$number <- length(active_mode_slots)
          mode_select_image_nr <- png::readPNG(paste0("Game_Screens/Game_Mode/", mode_name, ".png"), native = T)
          nr_blit(nr, mode_select_image_nr, 294,96)
          dev.hold()
          grid.raster(nr, interpolate = FALSE)
          dev.flush()
          Sys.sleep(0.75)
        }
        if(active_mode$mode != ""){
          mode_select <-  TRUE
          active_mode$number <- active_mode$number - 1
          if(active_mode$number < 1){active_mode$number <- length(active_mode_slots)}
          mode_name <- active_mode_slots[active_mode$number]
          mode_select_image_nr <- png::readPNG(paste0("Game_Screens/Game_Mode/", mode_name, ".png"), native = T)
          nr_blit(nr, mode_select_image_nr, 294,96)
          dev.hold()
          grid.raster(nr, interpolate = FALSE)
          dev.flush()
          Sys.sleep(0.5)
        }
      }
      if(mode_select_input == "Enter|" & mode_select == TRUE){
        for(i in 1:20){
          if(mode_selected_on == TRUE){
            nr_blit(nr, mode_select_image_nr, 294,96)
            dev.hold()
            grid.raster(nr, interpolate = FALSE)
            dev.flush()
            Sys.sleep(0.1)
            mode_selected_on <- FALSE
          } else {
            if(mode_name == "Game_Mode_Story"){
              mode_select_image_start_nr <- png::readPNG(paste0("Game_Screens/Game_Mode/Game_Mode_Story_1.png"), native = T)
              nr_blit(nr, mode_select_image_start_nr, 294,96)
            } else {
              mode_select_image_start_nr <- png::readPNG(paste0("Game_Screens/Game_Mode/Game_Mode_Battle_1.png"), native = T)
              nr_blit(nr, mode_select_image_start_nr, 294,96)
            }
            dev.hold()
            grid.raster(nr, interpolate = FALSE)
            dev.flush()
            Sys.sleep(0.1)
            mode_selected_on <- TRUE
          }
        }
        mode_initiated <- TRUE
      }
    }
  }
  mode_select <- FALSE
  mode_initiated <- FALSE
  return_list <- list(mode_name = mode_name, mode_select = mode_select, mode_initiated = mode_initiated)
  return(return_list)
}
