#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

shinyUI(fluidPage(
  sidebarPanel(
    h3('Miles Per Gallon'),
    p('Select the predictor variable with mpg :'),
    selectInput('x', label='Variables', selected='cyl', 
    c("Cylinders" = "cyl",
     "Transmission" = "am",
     "Weight(10000 lbs)" = "wt",
     "Gross Horsepower" = "hp",
     "qsec 1/4 mile time" = "qsec",
     "Gears" = "gear")),             

    p('Select the box color :'),
    selectInput('color', label='Color', choices=palette(),selected = 'blue'),
    checkboxInput("Outliner", "Show Outliner", TRUE)
    ),
  mainPanel(
    div(h2("Shiny Application and Reproducible Pitch")),
    h3(textOutput("Caption")),
    h4('Summary of Selected Attribute'),
    h4(verbatimTextOutput("summary")),
    h4(textOutput('text')),
    plotOutput('myPlot'))
  
))