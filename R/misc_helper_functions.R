#' Get the Photo
#'
#' @param my_path Directory to where the photos live
#' @param name Name of the photo
#'
#' @return
#' @export
#'
#' @examples
get_photo <- function (my_path, name) {
  my_file <- paste0(my_path, name)
  return(my_file)
}


#' Get a Random Photo
#'
#' @param my_path Directory to where the photos live
#'
#' @return
#' @export
#'
#' @examples
get_photo_random <- function (my_path) {
  my_files <- sample(paste0(my_path, list.files(my_path)), size = 1)
  return(my_files)
}
