# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#
library(shiny)

shinyServer(function(input, output, session) {

  session$onSessionEnded(function(){
    stopApp()
  })

  observeEvent(
    ignoreNULL = TRUE,
    eventExpr = {
      input$directory
    },
    handlerExpr = {
      if (input$directory > 0) {
        # condition prevents handler execution on initial app launch
        path = choose.dir(default = readDirectoryInput(session, 'directory'),
          caption="Choose a directory...")
        updateDirectoryInput(session, 'directory', value = path)
      }
    }
  )

  output$directory = renderText({
    readDirectoryInput(session, 'directory')
  })

  output$files = renderDataTable({
    files = list.files(readDirectoryInput(session, 'directory'), full.names = T)
    data.frame(name = basename(files), file.info(files))
  })

})
