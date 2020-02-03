library(shiny)
library(ggplot2)

shinyServer(function(input, output) {
  output$distPlot <- renderPlot({
    x    <- faithful[, 2] 
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    qplot(x, breaks = bins, data = faithful)
    
  })
  
})
