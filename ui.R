#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(reshape2)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  # Application title
  titlePanel("USA Arrests - Use the dropdown to change State"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       selectInput("state",
                   "Select State:",
                   choices = c(rownames(USArrests))
    )
    ),
    
    # Show a plt of the gene
    mainPanel(
      plotOutput("distplot")
    )
  )
))
