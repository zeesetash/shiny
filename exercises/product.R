
library(shiny)

ui <- fluidPage(
  sliderInput("x", label = "If x is", min = 1, max = 50, value = 15),
  sliderInput("y", label = "If y is", min = 1, max = 50, value = 25),
  "then, (x * y) is", textOutput("product"),
  "and, (x * y) + 5 is", textOutput("product_plus5"),
  "and (x * y) + 10 is", textOutput("product_plus10")
)

server <- function(input, output, session) {
  product <- reactive({
    input$x * input$y
    })
    output$product <- renderText({ 
      product()
  })
  output$product_plus5 <- renderText({ 
    product() + 5
  })
  output$product_plus10 <- renderText({ 
    product() + 10
  })
}

shinyApp(ui, server)