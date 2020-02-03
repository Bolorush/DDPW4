library(shiny)
library(ggplot2)

shinyUI(fluidPage(
  
  titlePanel("Old Faithful Geyser Data"),
  sidebarLayout(
    sidebarPanel(
       sliderInput("bins",
                   "Number of bins:",
                   min = 1,
                   max = 50,
                   value = 30)
    ),
    
    mainPanel(
       plotOutput("distPlot")
    )
  )
))
