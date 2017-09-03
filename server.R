#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
mpgdata <- mtcars
shinyServer(function(input, output) {
  mpgXY <- reactive({
    paste("mpg ~", input$x)
  })

   output$summary <- renderPrint({
    predictor <- input$x
    if(predictor == "cyl")
      summary(mtcars$cyl)
    else if(predictor == "wt")
      summary(mtcars$wt)
    else if(predictor == "qsec")
      summary(mtcars$qsec)
    else if(predictor == "am")
      summary(mtcars$am)
    else if(predictor == "gear")
      summary(mtcars$gear)
    else if(predictor == "hp")
      summary(mtcars$hp)

 })
   output$text <- renderText({
     paste("mpg ~", input$x)
  })
  output$myPlot <- renderPlot ({
      boxplot(as.formula(mpgXY()),
      data = mpgdata, 
      outline = input$Outliner,
      col=input$color, pch=20)

  })
})