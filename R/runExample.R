#' @name runExample
#' 
#' @title Runs a demo app with the code
#' 
#' See the code in the example_application folder
#' 
#' @export
runExample <- function() {
  appDir <- system.file("example_application", package = "shinyDirectoryInput")
  if (appDir == "") {
    stop("Could not find example directory. Try re-installing `mypackage`.", call. = FALSE)
  }
  
  shiny::runApp(appDir, display.mode = "normal")
}