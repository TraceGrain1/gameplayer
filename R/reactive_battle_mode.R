#' Title
#'
#' @param player_1
#' @param player_2
#' @param player_3
#' @param player_4
#' @param player_5
#' @param player_6
#' @param player_7
#' @param player_8
#' @param player_9
#' @param player_10
#' @param player_11
#' @param player_12
#' @param player_13
#' @param player_14
#' @param player_15
#' @param player_16
#'
#' @return
#' @export
#'
#' @examples
battle_mode_character_slots_function_16 <- function(player_1, player_2, player_3,player_4,
                                                    player_5, player_6, player_7, player_8,
                                                    player_9, player_10, player_11, player_12,
                                                    player_13, player_14, player_15, player_16) {
  game_mode_battle_character_slots <- list(
    list(player_1, player_2, player_3, player_4,
         player_5, player_6, player_7, player_8,
         player_9, player_10, player_11, player_12,
         player_13, player_14, player_15, player_16)
  )
  return(game_mode_battle_character_slots)
}

#' Title
#'
#' @return
#' @export
#'
#' @examples
create_active_battle_mode_character_slots <- function() {
  active_game_mode_battle_character_slots <- unlist(game_mode_battle_character_slots)
  active_game_mode_battle_character <- data.frame(
    game_mode_battle_character = "",
    number = 0
  )
  return_list <- list(active_game_mode_battle_character_slots = active_game_mode_battle_character_slots, active_game_mode_battle_character = active_game_mode_battle_character)
  return(return_list)
}


#' Title
#'
#' @return
#' @export
#'
#' @examples
game_mode_battle_character_select_16 <- function() {
  if (mode_name == "Game_Mode_Battle"){
    nr_blit(nr, game_mode_battle_character_select_image_start_nr, 294,96)
    dev.hold()
    grid.raster(nr, interpolate = FALSE)
    dev.flush()
    Sys.sleep(0.01)

    while (game_mode_battle_character_select == FALSE){
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
      game_mode_battle_character_select_input <- KeyboardCheckeR::getKeyboard()
      print(paste0("game_mode_battle_character Select Started. User Pressing ", game_mode_battle_character_select_input))
      while (game_mode_battle_character_initiated == FALSE){
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
        game_mode_battle_character_select_input <- KeyboardCheckeR::getKeyboard()
        print(paste0("game_mode_battle_character Select Started. User Pressing ", game_mode_battle_character_select_input))


        # Choose game_mode_battle_character Slot 1
        if(game_mode_battle_character_select_input == "Right|"){
          if(active_game_mode_battle_character$game_mode_battle_character == ""){
            game_mode_battle_character_select <-  TRUE
            game_mode_battle_character_name <- active_game_mode_battle_character_slots[1]
            active_game_mode_battle_character$game_mode_battle_character <- active_game_mode_battle_character_slots[1]
            active_game_mode_battle_character$number <- active_game_mode_battle_character$number + 1
            game_mode_battle_character_select_image_nr <- png::readPNG(paste0("Game_Mode_Battle/Character_Select/", game_mode_battle_character_name, ".png"), native = T)
            nr_blit(nr, game_mode_battle_character_select_image_nr, 294,96)
            dev.hold()
            grid.raster(nr, interpolate = FALSE)
            dev.flush()
            Sys.sleep(0.75)
          }
          if(active_game_mode_battle_character$game_mode_battle_character != ""){
            game_mode_battle_character_select <-  TRUE
            active_game_mode_battle_character$number <- active_game_mode_battle_character$number + 1
            if(active_game_mode_battle_character$number > length(active_game_mode_battle_character_slots)){active_game_mode_battle_character$number <- 1}
            game_mode_battle_character_name <- active_game_mode_battle_character_slots[active_game_mode_battle_character$number]
            game_mode_battle_character_select_image_nr <- png::readPNG(paste0("Game_Mode_Battle/Character_Select/", game_mode_battle_character_name, ".png"), native = T)
            nr_blit(nr, game_mode_battle_character_select_image_nr, 294,96)
            dev.hold()
            grid.raster(nr, interpolate = FALSE)
            dev.flush()
            Sys.sleep(0.5)
          }
        }

        if(game_mode_battle_character_select_input == "Left|"){
          if(active_game_mode_battle_character$game_mode_battle_character == ""){
            game_mode_battle_character_select <-  TRUE
            game_mode_battle_character_name <- active_game_mode_battle_character_slots[length(active_game_mode_battle_character_slots)]
            active_game_mode_battle_character$game_mode_battle_character <- active_game_mode_battle_character_slots[length(active_game_mode_battle_character_slots)]
            active_game_mode_battle_character$number <- length(active_game_mode_battle_character_slots)
            game_mode_battle_character_select_image_nr <- png::readPNG(paste0("Game_Mode_Battle/Character_Select/", game_mode_battle_character_name, ".png"), native = T)
            nr_blit(nr, game_mode_battle_character_select_image_nr, 294,96)
            dev.hold()
            grid.raster(nr, interpolate = FALSE)
            dev.flush()
            Sys.sleep(0.75)
          }
          if(active_game_mode_battle_character$game_mode_battle_character != ""){
            game_mode_battle_character_select <-  TRUE
            active_game_mode_battle_character$number <- active_game_mode_battle_character$number - 1
            if(active_game_mode_battle_character$number < 1){active_game_mode_battle_character$number <- length(active_game_mode_battle_character_slots)}
            game_mode_battle_character_name <- active_game_mode_battle_character_slots[active_game_mode_battle_character$number]
            game_mode_battle_character_select_image_nr <- png::readPNG(paste0("Game_Mode_Battle/Character_Select/", game_mode_battle_character_name, ".png"), native = T)
            nr_blit(nr, game_mode_battle_character_select_image_nr, 294,96)
            dev.hold()
            grid.raster(nr, interpolate = FALSE)
            dev.flush()
            Sys.sleep(0.5)
          }
        }
        if(game_mode_battle_character_select_input == "Enter|" & game_mode_battle_character_select == TRUE){
          for(i in 1:20){
            if(game_mode_battle_character_selected_on == TRUE){
              nr_blit(nr, game_mode_battle_character_select_image_nr, 294,96)
              dev.hold()
              grid.raster(nr, interpolate = FALSE)
              dev.flush()
              Sys.sleep(0.1)
              game_mode_battle_character_selected_on <- FALSE
            }
          }
          game_mode_battle_character_initiated <- TRUE
        }
      }
    }

    npc_sample_number <- sample(1:16, size = 1, replace = TRUE)
    game_mode_battle_character_versus_image_nr <- png::readPNG(paste0("Game_Mode_Battle/Character_Versus/", game_mode_battle_character_name, "_Player_", npc_sample_number, ".png"), native = T)

    for(i in 1:100){
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
      nr_blit(nr, game_mode_battle_character_versus_image_nr, 294,96)
      dev.hold()
      grid.raster(nr, interpolate = FALSE)
      dev.flush()
      Sys.sleep(0.1)
    }
  }
  game_mode_battle_character_select <- FALSE
  game_mode_battle_character_initiated <- FALSE
  tryCatch({
    return_list <- list(game_mode_battle_character_name = game_mode_battle_character_name, game_mode_battle_character_select = game_mode_battle_character_select, game_mode_battle_character_initiated = game_mode_battle_character_initiated, npc_sample_number = npc_sample_number)
    return(return_list)
  }, error=function(e){})
}


#' Title
#'
#' @param number_1
#' @param number_2
#' @param number_3
#' @param number_4
#' @param name_1
#' @param name_2
#' @param name_3
#' @param name_4
#'
#' @return
#' @export
#'
#' @examples
battle_mode_map_slots_function_4 <- function(number_1, number_2, number_3, number_4, name_1, name_2, name_3, name_4) {
  game_mode_battle_map_slots <- list(
    list(number_1, number_2, number_3, number_4),
    list(name_1, name_2, name_3, name_4)
  )
  names(game_mode_battle_map_slots) <- c( "Map_Number", "Map_Name")
  return(game_mode_battle_map_slots)
}

#' Title
#'
#' @return
#' @export
#'
#' @examples
create_active_battle_mode_map_slots <- function() {
  active_game_mode_battle_map_slots <- cbind.data.frame(unlist(game_mode_battle_map_slots[[1]]), unlist(game_mode_battle_map_slots[[2]]))
  names(active_game_mode_battle_map_slots) <- c("Number", "Name")
  active_game_mode_battle_map <- data.frame(
    game_mode_battle_map = "",
    number = 0
  )
  return_list <- list(active_game_mode_battle_map_slots = active_game_mode_battle_map_slots, active_game_mode_battle_map = active_game_mode_battle_map)
  return(return_list)
}


#' Title
#'
#' @return
#' @export
#'
#' @examples
game_mode_battle_map_select_4 <- function() {
  if (mode_name == "Game_Mode_Battle") {
    nr_blit(nr, game_mode_battle_map_select_image_start_nr, 294,96)
    dev.hold()
    grid.raster(nr, interpolate = FALSE)
    dev.flush()
    Sys.sleep(0.01)

    while (game_mode_battle_map_select == FALSE){
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
      game_mode_battle_map_select_input <- KeyboardCheckeR::getKeyboard()
      print(paste0("game_mode_battle_map Select Started. User Pressing ", game_mode_battle_map_select_input))
      while (game_mode_battle_map_initiated == FALSE){
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
        game_mode_battle_map_select_input <- KeyboardCheckeR::getKeyboard()
        print(paste0("game_mode_battle_map Select Started. User Pressing ", game_mode_battle_map_select_input))


        # Choose game_mode_battle_map Slot 1
        if(game_mode_battle_map_select_input == "Right|"){
          if(active_game_mode_battle_map$game_mode_battle_map == ""){
            game_mode_battle_map_select <-  TRUE
            game_mode_battle_map_name <- active_game_mode_battle_map_slots$Name[1]
            active_game_mode_battle_map$game_mode_battle_map <- active_game_mode_battle_map_slots$Name[1]
            active_game_mode_battle_map$number <- active_game_mode_battle_map$number + 1
            game_mode_battle_map_select_image_nr <- png::readPNG(paste0("Game_Mode_Battle/Map_Photos/", active_game_mode_battle_map$game_mode_battle_map, ".png"), native = T)
            nr_blit(nr, game_mode_battle_map_select_image_nr, 294,96)
            dev.hold()
            grid.raster(nr, interpolate = FALSE)
            dev.flush()
            Sys.sleep(0.75)
          }
          if(active_game_mode_battle_map$game_mode_battle_map != ""){
            game_mode_battle_map_select <-  TRUE
            active_game_mode_battle_map$number <- active_game_mode_battle_map$number + 1
            if(active_game_mode_battle_map$number > length(active_game_mode_battle_map_slots$Name)){active_game_mode_battle_map$number <- 1}
            game_mode_battle_map_name <- active_game_mode_battle_map_slots$Name[active_game_mode_battle_map$number]
            active_game_mode_battle_map$game_mode_battle_map <- game_mode_battle_map_name
            game_mode_battle_map_select_image_nr <- png::readPNG(paste0("Game_Mode_Battle/Map_Photos/", active_game_mode_battle_map$game_mode_battle_map, ".png"), native = T)
            nr_blit(nr, game_mode_battle_map_select_image_nr, 294,96)
            dev.hold()
            grid.raster(nr, interpolate = FALSE)
            dev.flush()
            Sys.sleep(0.5)
          }
        }

        if(game_mode_battle_map_select_input == "Left|"){
          if(active_game_mode_battle_map$game_mode_battle_map == ""){
            game_mode_battle_map_select <-  TRUE
            game_mode_battle_map_name <- active_game_mode_battle_map_slots$Name[length(active_game_mode_battle_map_slots$Name)]
            active_game_mode_battle_map$game_mode_battle_map <- active_game_mode_battle_map_slots$Name[length(active_game_mode_battle_map_slots$Name)]
            active_game_mode_battle_map$number <- length(active_game_mode_battle_map_slots$Name)
            game_mode_battle_map_select_image_nr <- png::readPNG(paste0("Game_Mode_Battle/Map_Photos/", active_game_mode_battle_map$game_mode_battle_map, ".png"), native = T)
            nr_blit(nr, game_mode_battle_map_select_image_nr, 294,96)
            dev.hold()
            grid.raster(nr, interpolate = FALSE)
            dev.flush()
            Sys.sleep(0.75)
          }
          if(active_game_mode_battle_map$game_mode_battle_map != ""){
            game_mode_battle_map_select <-  TRUE
            active_game_mode_battle_map$number <- active_game_mode_battle_map$number - 1
            if(active_game_mode_battle_map$number < 1){active_game_mode_battle_map$number <- length(active_game_mode_battle_map_slots$Name)}
            game_mode_battle_map_name <- active_game_mode_battle_map_slots$Name[active_game_mode_battle_map$number]
            active_game_mode_battle_map$game_mode_battle_map <- game_mode_battle_map_name
            game_mode_battle_map_select_image_nr <- png::readPNG(paste0("Game_Mode_Battle/Map_Photos/", active_game_mode_battle_map$game_mode_battle_map, ".png"), native = T)
            nr_blit(nr, game_mode_battle_map_select_image_nr, 294,96)
            dev.hold()
            grid.raster(nr, interpolate = FALSE)
            dev.flush()
            Sys.sleep(0.5)
          }
        }
        if(game_mode_battle_map_select_input == "Enter|" & game_mode_battle_map_select == TRUE){
          for(i in 1:20){
            if(game_mode_battle_map_selected_on == TRUE){
              nr_blit(nr, game_mode_battle_map_select_image_nr, 294,96)
              dev.hold()
              grid.raster(nr, interpolate = FALSE)
              dev.flush()
              Sys.sleep(0.1)
              game_mode_battle_map_selected_on <- FALSE
            }
          }
          game_mode_battle_map_initiated <- TRUE
        }
      }
    }
  }
  game_mode_battle_map_select <- FALSE
  game_mode_battle_map_initiated <- FALSE
  return_list <- list(game_mode_battle_map_name = game_mode_battle_map_name, game_mode_battle_map_select = game_mode_battle_map_select, game_mode_battle_map_initiated = game_mode_battle_map_initiated, active_game_mode_battle_map = active_game_mode_battle_map)
  return(return_list)
}

#' Title
#'
#' @param player
#'
#' @return
#' @export
#'
#' @examples
assign_user_sprites <- function (player) {
  user_1_nr <- png::readPNG(paste0("Resized/", player,"_.png"), native = T)
  user_1_nr_flop <- png::readPNG(paste0("Resized/", player, "_Flop.png"), native = T)
  user_1_nr_1 <- png::readPNG(paste0("Resized/", player, "_1.png"), native = T)
  user_1_nr_2 <- png::readPNG(paste0("Resized/", player, "_2.png"), native = T)
  user_1_nr_3 <- png::readPNG(paste0("Resized/", player, "_3.png"), native = T)
  user_1_nr_4 <- png::readPNG(paste0("Resized/", player, "_4.png"), native = T)
  user_1_nr_5 <- png::readPNG(paste0("Resized/", player, "_5.png"), native = T)
  user_1_nr_6 <- png::readPNG(paste0("Resized/", player, "_6.png"), native = T)
  user_1_nr_7 <- png::readPNG(paste0("Resized/", player, "_7.png"), native = T)
  user_1_nr_8 <- png::readPNG(paste0("Resized/", player, "_8.png"), native = T)
  user_1_nr_width <- dim(user_1_nr)[2]

  return_list <- list(
    user_1_nr = user_1_nr,
    user_1_nr_flop = user_1_nr_flop,
    user_1_nr_1 = user_1_nr_1,
    user_1_nr_2 = user_1_nr_2,
    user_1_nr_3 = user_1_nr_3,
    user_1_nr_4 = user_1_nr_4,
    user_1_nr_5 = user_1_nr_5,
    user_1_nr_6 = user_1_nr_6,
    user_1_nr_7 = user_1_nr_7,
    user_1_nr_8 = user_1_nr_8,
    user_1_nr_width = user_1_nr_width
  )
  return(return_list)
}


#' Title
#'
#' @param player_npc
#'
#' @return
#' @export
#'
#' @examples
assign_npc_sprites <- function (player_npc) {
  npc_1_nr <- png::readPNG(paste0("Resized/Player_", player_npc,"_.png"), native = T)
  npc_1_nr_flop <- png::readPNG(paste0("Resized/Player_", player_npc, "_Flop.png"), native = T)
  npc_1_nr_1 <- png::readPNG(paste0("Resized/Player_", player_npc, "_1.png"), native = T)
  npc_1_nr_2 <- png::readPNG(paste0("Resized/Player_", player_npc, "_2.png"), native = T)
  npc_1_nr_3 <- png::readPNG(paste0("Resized/Player_", player_npc, "_3.png"), native = T)
  npc_1_nr_4 <- png::readPNG(paste0("Resized/Player_", player_npc, "_4.png"), native = T)
  npc_1_nr_5 <- png::readPNG(paste0("Resized/Player_", player_npc, "_5.png"), native = T)
  npc_1_nr_6 <- png::readPNG(paste0("Resized/Player_", player_npc, "_6.png"), native = T)
  npc_1_nr_7 <- png::readPNG(paste0("Resized/Player_", player_npc, "_7.png"), native = T)
  npc_1_nr_8 <- png::readPNG(paste0("Resized/Player_", player_npc, "_8.png"), native = T)
  npc_1_nr_hit <- png::readPNG(paste0("Resized/Player_", player_npc,"_Hit.png"), native = T)
  npc_1_nr_width <- dim(npc_1_nr)[2]
  npc_1_start_x <- 779 - npc_1_nr_width

  return_list <- list(
    npc_1_nr = npc_1_nr,
    npc_1_nr_flop = npc_1_nr_flop,
    npc_1_nr_1 = npc_1_nr_1,
    npc_1_nr_2 = npc_1_nr_2,
    npc_1_nr_3 = npc_1_nr_3,
    npc_1_nr_4 = npc_1_nr_4,
    npc_1_nr_5 = npc_1_nr_5,
    npc_1_nr_6 = npc_1_nr_6,
    npc_1_nr_7 = npc_1_nr_7,
    npc_1_nr_8 = npc_1_nr_8,
    npc_1_nr_hit = npc_1_nr_hit,
    npc_1_nr_width = npc_1_nr_width,
    npc_1_start_x = npc_1_start_x
  )
  return(return_list)
}


#' Title
#'
#'
#' @return
#' @export
#'
#' @examples
assign_battle_map <- function () {
  background_nr <- png::readPNG(paste0("Game_Mode_Battle/Map_Rendered/", active_game_mode_battle_map$number, "_Map_image_20.png"), native = T)
  nr_blit(nr, background_nr, 294,96)
  nr_blit(nr, user_1_nr, user_1_start_x+x, 99+y)
  nr_blit(nr, npc_1_nr, 651+x1, 99+y)
  dev.hold()
  grid.raster(nr, interpolate = FALSE)
  dev.flush()
}

#' Title
#'
#' @return
#' @export
#'
#' @examples
battle_mode_set_up_variables <- function () {
  user_life <- 1000
  npc_life <- 1000
  x <- 0
  y <- 0
  x1 <- 0
  y1 <- 0
  flop <- 0
  flip <- 0
  walk_number <- 1
  input3 <- ""
  map_num <- 20
  game_start <- FALSE
  player_initiated <- FALSE
  player_select <- FALSE
  cycle <- 0
  npc_blast <- 25
  hit_d <- 0
  hit_s <- 1
  user_1_start_x <- 294
  speed <- 10
  speed_npc <- 5
  strength <- 5
  jump <- 5
  return_list <- list(
    user_life = user_life, npc_life = npc_life, x = x, y = y, x1 = x1, y1 = y1, flop = flop, flip = flip,
    walk_number = walk_number, input3 = input3, map_num = map_num, game_start = game_start, player_initiated = player_initiated,
    player_select = player_select, cycle = cycle, npc_blast = npc_blast, hit_d = hit_d, hit_s = hit_s, user_1_start_x = user_1_start_x,
    speed = speed, speed_npc = speed_npc, strength = strength, jump = jump
  )
  return(return_list)
}

#' Title
#'
#' @return
#' @export
#'
#' @examples
move_function_left <- function () {
  if(input2 == "Left|"){
    if(x < -980){
      x <- -980
    } else {
      x <- x - speed
    }
    print(x)
    nr_blit(nr = nr, game_device_nr, 0, 0)

    nr_blit(nr, png::readPNG(paste0("Game_Mode_Battle/Map_Rendered/", active_game_mode_battle_map$number,"_Map_image_", map_num,".png"), native = T), 294,96)


    if(input3 == TRUE){
      ifelse(flop == 0 & user_1_start_x + x >= user_1_start_x,
             nr_blit(nr, user_1_nr, user_1_start_x+x, 99+y),
             ifelse(flop == 0 & user_1_start_x + x <= user_1_start_x,
                    nr_blit(nr, user_1_nr, user_1_start_x, 99+y),
                    ifelse(flop == 1 & user_1_start_x + x >= user_1_start_x,
                           nr_blit(nr, user_1_nr_flop, user_1_start_x+x, 99+y),
                           ifelse(flop == 1 & user_1_start_x + x <= user_1_start_x,
                                  nr_blit(nr, user_1_nr_flop, user_1_start_x, 99+y), print("Done")))))
    } else {
      ifelse(294+x >= 779-user_1_nr_width,
             x <- 485-user_1_nr_width,
             x <- x)
      ifelse(map_num > 39,
             map_num <- map_num <- 39,
             map_num <- map_num)
      ifelse(294+x < 294,
             map_num <- map_num - 1,
             map_num <- map_num)
      ifelse(map_num < 1,
             map_num <- 1,
             map_num <- map_num)

      ifelse(flop == 0 & user_1_start_x + x >= 779-user_1_nr_width,
             nr_blit(nr, user_1_nr, 779-user_1_nr_width, 99+y),
             ifelse(flop == 0 & user_1_start_x + x <= 779-user_1_nr_width & user_1_start_x + x >= 294,
                    nr_blit(nr, user_1_nr, user_1_start_x + x, 99+y),
                    ifelse(flop == 1 & user_1_start_x + x >= 779-user_1_nr_width,
                           nr_blit(nr, user_1_nr_flop, 779-user_1_nr_width, 99+y),
                           ifelse(flop == 1 & user_1_start_x + x <= 779-user_1_nr_width & user_1_start_x + x >= 294,
                                  nr_blit(nr, user_1_nr, user_1_start_x + x, 99+y), print("Done")))))



      ifelse(flop == 0 & user_1_start_x + x <= 294,
             nr_blit(nr, user_1_nr, user_1_start_x, 99+y),
             ifelse(flop == 0 & user_1_start_x + x >= 294 & user_1_start_x + x <= 779-user_1_nr_width,
                    nr_blit(nr, user_1_nr, user_1_start_x + x, 99+y),
                    ifelse(flop == 1 & user_1_start_x + x <= 294,
                           nr_blit(nr, user_1_nr_flop, user_1_start_x, 99+y),
                           ifelse(flop == 1 & user_1_start_x + x >= 294 & user_1_start_x + x <= 779-user_1_nr_width,
                                  nr_blit(nr, user_1_nr, user_1_start_x + x, 99+y), print("Done")))))


      ifelse(flip == 0,
             nr_blit(nr, npc_1_nr, 651+x1, 99+y1),
             nr_blit(nr, npc_1_nr_flop, 651+x1, 99+y1))


    }
    dev.hold()
    grid.raster(nr, interpolate = FALSE)
    dev.flush()

    flop <- ifelse(walk_number %in% 1:12,
                   0,
                   ifelse(walk_number %in% 13:24, 1, 0))


    ifelse(walk_number == 24,
           walk_number <- 1,
           walk_number <- walk_number + 1)
  }
  return_list <- list(x = x, map_num = map_num, flop = flop, walk_number = walk_number)
  return(return_list)
}


#' Title
#'
#' @return
#' @export
#'
#' @examples
move_function_right <- function() {
  if(input2 == "Right|"){
    if(x > 980){
      x <- 980
    } else {
      x <- x + speed
      x1 <- x1 + speed
    }
    print(x)
    nr_blit(nr = nr, game_device_nr, 0, 0)

    nr_blit(nr, png::readPNG(paste0("Game_Mode_Battle/Map_Rendered/", active_game_mode_battle_map$number,"_Map_image_", map_num,".png"), native = T), 294,96)


    if(input3 == TRUE){
      ifelse(flop == 0 & user_1_start_x + x >= 720,
             nr_blit(nr, user_1_nr, 720, 99+y),
             ifelse(flop == 0 & user_1_start_x + x <= 720,
                    nr_blit(nr, user_1_nr, user_1_start_x + x, 99+y),
                    ifelse(flop == 1 & user_1_start_x + x >= 720,
                           nr_blit(nr, user_1_nr_flop, 720, 99+y),
                           ifelse(flop == 1 & user_1_start_x + x <= 720,
                                  nr_blit(nr, user_1_nr, user_1_start_x + x, 99+y), print("Done")))))
    } else {
      ifelse(294+x <= 294,
             x <- 0,
             x <- x)
      ifelse(map_num < 1,
             map_num <- map_num <- 1,
             map_num <- map_num)
      ifelse(294+x > 779-user_1_nr_width-npc_1_nr_width,
             map_num <- map_num + 1,
             map_num <- map_num)
      ifelse(map_num > 39,
             map_num <- 39,
             map_num <- map_num)



      ifelse(flop == 0 & user_1_start_x + x >= 779-user_1_nr_width-npc_1_nr_width,
             nr_blit(nr, user_1_nr, 779-user_1_nr_width-npc_1_nr_width, 99+y),
             ifelse(flop == 0 & user_1_start_x + x <= 779-user_1_nr_width-npc_1_nr_width & user_1_start_x + x >= 294,
                    nr_blit(nr, user_1_nr, user_1_start_x + x, 99+y),
                    ifelse(flop == 1 & user_1_start_x + x >= 779-user_1_nr_width-npc_1_nr_width,
                           nr_blit(nr, user_1_nr_flop, 779-user_1_nr_width-npc_1_nr_width, 99+y),
                           ifelse(flop == 1 & user_1_start_x + x <= 779-user_1_nr_width-npc_1_nr_width & user_1_start_x + x >= 294,
                                  nr_blit(nr, user_1_nr, user_1_start_x + x, 99+y), print("Done")))))



      ifelse(flop == 0 & user_1_start_x + x <= 294,
             nr_blit(nr, user_1_nr, user_1_start_x, 99+y),
             ifelse(flop == 0 & user_1_start_x + x >= 294 & user_1_start_x + x <= 779-user_1_nr_width-npc_1_nr_width,
                    nr_blit(nr, user_1_nr, user_1_start_x + x, 99+y),
                    ifelse(flop == 1 & user_1_start_x + x <= 294,
                           nr_blit(nr, user_1_nr_flop, user_1_start_x, 99+y),
                           ifelse(flop == 1 & user_1_start_x + x >= 294 & user_1_start_x + x <= 779-user_1_nr_width-npc_1_nr_width,
                                  nr_blit(nr, user_1_nr, user_1_start_x + x, 99+y), print("Done")))))
    }



    ifelse(flip == 0,
           nr_blit(nr, npc_1_nr, 651+x1, 99+y1),
           nr_blit(nr, npc_1_nr_flop, 651+x1, 99+y1))

    dev.hold()
    grid.raster(nr, interpolate = FALSE)
    dev.flush()

    flop <- ifelse(walk_number %in% 1:12,
                   0,
                   ifelse(walk_number %in% 13:24, 1, 0))
    ifelse(walk_number == 24,
           walk_number <- 1,
           walk_number <- walk_number + 1)
  }
  return_list <- list(x = x, map_num = map_num, flop = flop, walk_number = walk_number)
  return(return_list)
}


#' Title
#'
#' @return
#' @export
#'
#' @examples
assign_s <- function() {
  if(input2 == "S|"){
    nr_blit(nr = nr, game_device_nr, 0, 0)

    nr_blit(nr, array_to_nr(png::readPNG(paste0("Game_Mode_Battle/Map_Rendered/", active_game_mode_battle_map$number,"_Map_image_", map_num,".png"))), 294,96)
    ifelse(flop == 0 & user_1_start_x + x >= 720,
           nr_blit(nr, user_1_nr_2, 720, 99+y),
           ifelse(flop == 0 & user_1_start_x + x <= 720 & user_1_start_x + x >= 294,
                  nr_blit(nr, user_1_nr_2, user_1_start_x + x, 99+y),
                  ifelse(flop == 1 & user_1_start_x + x >= 720,
                         nr_blit(nr, user_1_nr_2, 720, 99+y),
                         ifelse(flop == 1 & user_1_start_x + x <= 720 & user_1_start_x + x >= 294,
                                nr_blit(nr, user_1_nr_2, user_1_start_x + x, 99+y), print("Done")))))



    ifelse(flop == 0 & user_1_start_x + x <= 294,
           nr_blit(nr, user_1_nr_2, user_1_start_x, 99+y),
           ifelse(flop == 0 & user_1_start_x + x >= 294 & user_1_start_x + x <= 720,
                  nr_blit(nr, user_1_nr_2, user_1_start_x + x, 99+y),
                  ifelse(flop == 1 & user_1_start_x + x <= 294,
                         nr_blit(nr, user_1_nr_2, user_1_start_x, 99+y),
                         ifelse(flop == 1 & user_1_start_x + x >= 294 & user_1_start_x + x <= 720,
                                nr_blit(nr, user_1_nr_2, user_1_start_x + x, 99+y), print("Done")))))


    nr_blit(nr, user_1_nr_2, 294+x, 99+y)
    if(flip == 0){nr_blit(nr, npc_1_nr, 651+x1, 99+y1)}
    if(flip == 1){nr_blit(nr, npc_1_nr_flop, 651+x1, 99+y1)}
    dev.hold()
    grid.raster(nr, interpolate = FALSE)
    dev.flush()
  }
  return(print("No List Returned"))
}


#' Title
#'
#' @return
#' @export
#'
#' @examples
assign_shift_s <- function() {
  if(input2 == "Shift|S|"){
    nr_blit(nr = nr, game_device_nr, 0, 0)

    nr_blit(nr, array_to_nr(png::readPNG(paste0("Game_Mode_Battle/Map_Rendered/", active_game_mode_battle_map$number,"_Map_image_", map_num,".png"))), 294,96)
    ifelse(flop == 0 & user_1_start_x + x >= 720,
           nr_blit(nr, user_1_nr_2, 720, 99+y),
           ifelse(flop == 0 & user_1_start_x + x <= 720 & user_1_start_x + x >= 294,
                  nr_blit(nr, user_1_nr_2, user_1_start_x + x, 99+y),
                  ifelse(flop == 1 & user_1_start_x + x >= 720,
                         nr_blit(nr, user_1_nr_2, 720, 99+y),
                         ifelse(flop == 1 & user_1_start_x + x <= 720 & user_1_start_x + x >= 294,
                                nr_blit(nr, user_1_nr_2, user_1_start_x + x, 99+y), print("Done")))))



    ifelse(flop == 0 & user_1_start_x + x <= 294,
           nr_blit(nr, user_1_nr_2, user_1_start_x, 99+y),
           ifelse(flop == 0 & user_1_start_x + x >= 294 & user_1_start_x + x <= 720,
                  nr_blit(nr, user_1_nr_2, user_1_start_x + x, 99+y),
                  ifelse(flop == 1 & user_1_start_x + x <= 294,
                         nr_blit(nr, user_1_nr_2, user_1_start_x, 99+y),
                         ifelse(flop == 1 & user_1_start_x + x >= 294 & user_1_start_x + x <= 720,
                                nr_blit(nr, user_1_nr_2, user_1_start_x + x, 99+y), print("Done")))))


    nr_blit(nr, user_1_nr_2, 294+x, 99+y)
    nr_blit(nr, npc_1_nr_2, 651+x1, 99+y1)
    dev.hold()
    grid.raster(nr, interpolate = FALSE)
    dev.flush()
  }
  return(print("No List Returned"))
}


#' Title
#'
#' @return
#' @export
#'
#' @examples
assign_hit_s <- function() {
  if(input2 == "S|" & abs(user_coordinates[1] - npc_coordinates[1]) < 100 & hit_d == 1){
    npc_life <- npc_life - strength
    npc_blast <- npc_blast - strength
    nr_blit(nr = nr, game_device_nr, 0, 0)

    nr_blit(nr, array_to_nr(png::readPNG(paste0("Game_Mode_Battle/Map_Rendered/", active_game_mode_battle_map$number,"_Map_image_", map_num,".png"))), 294,96)
    ifelse(flop == 0 & user_1_start_x + x >= 720,
           nr_blit(nr, user_1_nr_2, 720, 99+y),
           ifelse(flop == 0 & user_1_start_x + x <= 720 & user_1_start_x + x >= 294,
                  nr_blit(nr, user_1_nr_2, user_1_start_x + x, 99+y),
                  ifelse(flop == 1 & user_1_start_x + x >= 720,
                         nr_blit(nr, user_1_nr_2, 720, 99+y),
                         ifelse(flop == 1 & user_1_start_x + x <= 720 & user_1_start_x + x >= 294,
                                nr_blit(nr, user_1_nr_2, user_1_start_x + x, 99+y), print("Done")))))



    ifelse(flop == 0 & user_1_start_x + x <= 294,
           nr_blit(nr, user_1_nr_2, user_1_start_x, 99+y),
           ifelse(flop == 0 & user_1_start_x + x >= 294 & user_1_start_x + x <= 720,
                  nr_blit(nr, user_1_nr_2, user_1_start_x + x, 99+y),
                  ifelse(flop == 1 & user_1_start_x + x <= 294,
                         nr_blit(nr, user_1_nr_2, user_1_start_x, 99+y),
                         ifelse(flop == 1 & user_1_start_x + x >= 294 & user_1_start_x + x <= 720,
                                nr_blit(nr, user_1_nr_2, user_1_start_x + x, 99+y), print("Done")))))


    nr_blit(nr, user_1_nr_3, 294+x, 99+y)
    if(flip == 0){nr_blit(nr, npc_1_nr, 651+x1, 99+y1)}
    if(flip == 1){nr_blit(nr, npc_1_nr_flop, 651+x1, 99+y1)}
    nr_blit(nr, pow_nr, 661+x1, 280+y1)
    dev.hold()
    grid.raster(nr, interpolate = FALSE)
    dev.flush()
    hit_d <- 0
    hit_s <- 1
  }
  return_list <- list(npc_life = npc_life, npc_blast = npc_blast, hit_d = hit_d, hit_s = hit_s)
  return(return_list)
}

#' Title
#'
#' @return
#' @export
#'
#' @examples
assign_d <- function() {
  if(input2 == "D|"){
    nr_blit(nr = nr, game_device_nr, 0, 0)

    nr_blit(nr, array_to_nr(png::readPNG(paste0("Game_Mode_Battle/Map_Rendered/", active_game_mode_battle_map$number,"_Map_image_", map_num,".png"))), 294,96)
    ifelse(flop == 0 & user_1_start_x + x >= 720,
           nr_blit(nr, user_1_nr_3, 720, 99+y),
           ifelse(flop == 0 & user_1_start_x + x <= 720 & user_1_start_x + x >= 294,
                  nr_blit(nr, user_1_nr_3, user_1_start_x + x, 99+y),
                  ifelse(flop == 1 & user_1_start_x + x >= 720,
                         nr_blit(nr, user_1_nr_3, 720, 99+y),
                         ifelse(flop == 1 & user_1_start_x + x <= 720 & user_1_start_x + x >= 294,
                                nr_blit(nr, user_1_nr_3, user_1_start_x + x, 99+y), print("Done")))))



    ifelse(flop == 0 & user_1_start_x + x <= 294,
           nr_blit(nr, user_1_nr_3, user_1_start_x, 99+y),
           ifelse(flop == 0 & user_1_start_x + x >= 294 & user_1_start_x + x <= 720,
                  nr_blit(nr, user_1_nr_3, user_1_start_x + x, 99+y),
                  ifelse(flop == 1 & user_1_start_x + x <= 294,
                         nr_blit(nr, user_1_nr_3, user_1_start_x, 99+y),
                         ifelse(flop == 1 & user_1_start_x + x >= 294 & user_1_start_x + x <= 720,
                                nr_blit(nr, user_1_nr_3, user_1_start_x + x, 99+y), print("Done")))))

    nr_blit(nr, user_1_nr_3, 294+x, 99+y)
    if(flip == 0){nr_blit(nr, npc_1_nr, 651+x1, 99+y1)}
    if(flip == 1){nr_blit(nr, npc_1_nr_flop, 651+x1, 99+y1)}
    dev.hold()
    grid.raster(nr, interpolate = FALSE)
    dev.flush()
  }
  return(print("No List Returned"))
}



#' Title
#'
#' @return
#' @export
#'
#' @examples
assign_shift_d <- function() {
  if(input2 == "Shift|D|"){
    nr_blit(nr = nr, game_device_nr, 0, 0)

    nr_blit(nr, array_to_nr(png::readPNG(paste0("Game_Mode_Battle/Map_Rendered/", active_game_mode_battle_map$number,"_Map_image_", map_num,".png"))), 294,96)
    ifelse(flop == 0 & user_1_start_x + x >= 720,
           nr_blit(nr, user_1_nr_3, 720, 99+y),
           ifelse(flop == 0 & user_1_start_x + x <= 720 & user_1_start_x + x >= 294,
                  nr_blit(nr, user_1_nr_3, user_1_start_x + x, 99+y),
                  ifelse(flop == 1 & user_1_start_x + x >= 720,
                         nr_blit(nr, user_1_nr_3, 720, 99+y),
                         ifelse(flop == 1 & user_1_start_x + x <= 720 & user_1_start_x + x >= 294,
                                nr_blit(nr, user_1_nr_3, user_1_start_x + x, 99+y), print("Done")))))



    ifelse(flop == 0 & user_1_start_x + x <= 294,
           nr_blit(nr, user_1_nr_3, user_1_start_x, 99+y),
           ifelse(flop == 0 & user_1_start_x + x >= 294 & user_1_start_x + x <= 720,
                  nr_blit(nr, user_1_nr_3, user_1_start_x + x, 99+y),
                  ifelse(flop == 1 & user_1_start_x + x <= 294,
                         nr_blit(nr, user_1_nr_3, user_1_start_x, 99+y),
                         ifelse(flop == 1 & user_1_start_x + x >= 294 & user_1_start_x + x <= 720,
                                nr_blit(nr, user_1_nr_3, user_1_start_x + x, 99+y), print("Done")))))



    nr_blit(nr, npc_1_nr_3, 651+x1, 99+y1)
    dev.hold()
    grid.raster(nr, interpolate = FALSE)
    dev.flush()
  }
  return(print("No List Returned"))
}


#' Title
#'
#' @return
#' @export
#'
#' @examples
assign_hit_d <- function() {
  if(input2 == "D|" & abs(user_coordinates[1] - npc_coordinates[1]) < 100 & hit_s == 1){
    npc_life <- npc_life - strength
    npc_blast <- npc_blast - strength
    nr_blit(nr = nr, game_device_nr, 0, 0)

    nr_blit(nr, array_to_nr(png::readPNG(paste0("Game_Mode_Battle/Map_Rendered/", active_game_mode_battle_map$number,"_Map_image_", map_num,".png"))), 294,96)
    ifelse(flop == 0 & user_1_start_x + x >= 720,
           nr_blit(nr, user_1_nr_3, 720, 99+y),
           ifelse(flop == 0 & user_1_start_x + x <= 720 & user_1_start_x + x >= 294,
                  nr_blit(nr, user_1_nr_3, user_1_start_x + x, 99+y),
                  ifelse(flop == 1 & user_1_start_x + x >= 720,
                         nr_blit(nr, user_1_nr_3, 720, 99+y),
                         ifelse(flop == 1 & user_1_start_x + x <= 720 & user_1_start_x + x >= 294,
                                nr_blit(nr, user_1_nr_3, user_1_start_x + x, 99+y), print("Done")))))



    ifelse(flop == 0 & user_1_start_x + x <= 294,
           nr_blit(nr, user_1_nr_3, user_1_start_x, 99+y),
           ifelse(flop == 0 & user_1_start_x + x >= 294 & user_1_start_x + x <= 720,
                  nr_blit(nr, user_1_nr_3, user_1_start_x + x, 99+y),
                  ifelse(flop == 1 & user_1_start_x + x <= 294,
                         nr_blit(nr, user_1_nr_3, user_1_start_x, 99+y),
                         ifelse(flop == 1 & user_1_start_x + x >= 294 & user_1_start_x + x <= 720,
                                nr_blit(nr, user_1_nr_3, user_1_start_x + x, 99+y), print("Done")))))



    if(flip == 0){nr_blit(nr, npc_1_nr, 651+x1, 99+y1)}
    if(flip == 1){nr_blit(nr, npc_1_nr_flop, 651+x1, 99+y1)}
    nr_blit(nr, pow_nr, 661+x1, 280+y1)
    dev.hold()
    grid.raster(nr, interpolate = FALSE)
    dev.flush()
    hit_d <- 1
    hit_s <- 0
  }
  return_list <- list(npc_life = npc_life, npc_blast = npc_blast, hit_d = hit_d, hit_s = hit_s)
  return(return_list)
}

#' Title
#'
#' @return
#' @export
#'
#' @examples
jump_function_left <- function() {
  if(input2 == "Spacebar|Left|"){
    seq <- rep(5, 10)
    Sys.sleep(0.1)
    for(i in seq){
      y <- y + i
      x <- x - jump


      nr_blit(nr, png::readPNG(paste0("Game_Mode_Battle/Map_Rendered/", active_game_mode_battle_map$number,"_Map_image_", map_num,".png"), native = T), 294,96)


      nr_blit(nr, user_1_nr, 294+x, 99+y)
      nr_blit(nr, npc_1_nr, 651+x1, 99+y1)
      dev.hold()
      grid.raster(nr, interpolate = FALSE)
      dev.flush()

    }
    seq <- rep(5, 10)
    for(i in seq){
      y <- y - i
      x <- x - jump


      nr_blit(nr, png::readPNG(paste0("Game_Mode_Battle/Map_Rendered/", active_game_mode_battle_map$number,"_Map_image_", map_num,".png"), native = T), 294,96)


      nr_blit(nr, user_1_nr, 294+x, 99+y)
      nr_blit(nr, npc_1_nr, 651+x1, 99+y1)
      dev.hold()
      grid.raster(nr, interpolate = FALSE)
      dev.flush()

    }
    return_list <- list(y = y, x = x)
    return(return_list)
  }
}

#' Title
#'
#' @return
#' @export
#'
#' @examples
jump_function_right <- function() {
  if(input2 == "Spacebar|Right|") {
    seq <- rep(5, 10)
    Sys.sleep(0.1)
    for(i in seq){
      y <- y + i
      x <- x + jump


      nr_blit(nr, png::readPNG(paste0("Game_Mode_Battle/Map_Rendered/", active_game_mode_battle_map$number,"_Map_image_", map_num,".png"), native = T), 294,96)


      nr_blit(nr, user_1_nr, 294+x, 99+y)
      nr_blit(nr, npc_1_nr, 651+x1, 99+y1)
      dev.hold()
      grid.raster(nr, interpolate = FALSE)
      dev.flush()

    }
    seq <- rep(5, 10)
    for(i in seq){
      y <- y - i
      x <- x + jump
      nr_blit(nr = nr, game_device_nr, 0, 0)

      nr_blit(nr, png::readPNG(paste0("Game_Mode_Battle/Map_Rendered/", active_game_mode_battle_map$number,"_Map_image_", map_num,".png"), native = T), 294,96)


      nr_blit(nr, user_1_nr, 294+x, 99+y)
      nr_blit(nr, npc_1_nr, 651+x1, 99+y1)
      dev.hold()
      grid.raster(nr, interpolate = FALSE)
      dev.flush()

    }
    return_list <- list(y = y, x = x)
    return(return_list)
  }
}

#' Title
#'
#' @return
#' @export
#'
#' @examples
jump_function <- function() {
  if(input2 == "Spacebar|"){
    seq <- rep(5, 10)
    for(i in seq){
      y <- y + i
      nr_blit(nr = nr, game_device_nr, 0, 0)

      nr_blit(nr, png::readPNG(paste0("Game_Mode_Battle/Map_Rendered/", active_game_mode_battle_map$number,"_Map_image_", map_num,".png"), native = T), 294,96)


      nr_blit(nr, user_1_nr, 294+x, 99+y)
      nr_blit(nr, npc_1_nr, 651+x1, 99+y1)
      dev.hold()
      grid.raster(nr, interpolate = FALSE)
      dev.flush()

    }
    seq <- rep(5, 10)
    for(i in seq){
      y <- y - i
      nr_blit(nr = nr, game_device_nr, 0, 0)

      nr_blit(nr, png::readPNG(paste0("Game_Mode_Battle/Map_Rendered/", active_game_mode_battle_map$number,"_Map_image_", map_num,".png"), native = T), 294,96)


      nr_blit(nr, user_1_nr, 294+x, 99+y)
      nr_blit(nr, npc_1_nr, 651+x1, 99+y1)
      dev.hold()
      grid.raster(nr, interpolate = FALSE)
      dev.flush()

    }
    return_list <- list(y = y)
    return(return_list)
  }
}
