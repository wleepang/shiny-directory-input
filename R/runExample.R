#' @name runDirinputExample
#' 
#' @title Runs a demo app with the code
#' 
#' See the code in the example_application folder
#' 
#' @export
runDirinputExample <- function() {
  appDir <- system.file("example_application", package = "shinyDirectoryInput")
  if (appDir == "") {
    stop("Could not find example directory. Try re-installing `shinyDirectoryInput`.", call. = FALSE)
  }
  
  shiny::runApp(appDir, display.mode = "normal")
}