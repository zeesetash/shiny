#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(
  textInput("name", NULL, placeholder = "Your name"),
  sliderInput("date",
              "When should we deliver?",
              min = as.Date("2020-09-16"),
              max = as.Date("2020-09-23"),
              value = as.Date("2020-09-17"))
)
server <- function(input, output, session) {}
  
# Run the application 
shinyApp(ui = ui, server = server)
