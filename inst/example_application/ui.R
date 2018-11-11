# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(
  fluidRow(
    column(1),
    column(
      width = 10,

      # Application title
      titlePanel("Directory Input Demo"),
      directoryInput('directory', label = 'selected directory', value = '~'),
      tags$h5('Files'),
      dataTableOutput('files')
    ),
    column(1)
  )
))
