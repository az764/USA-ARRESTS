#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)
# Define server logic required to draw a histogram
shinyServer(function(input, output,session) {
    

  output$distplot <- renderPlot({
data("USArrests")
USArrests<- subset(USArrests,rownames(USArrests)==input$state)
USArrests<-melt(USArrests)   
ggplot(USArrests,aes(x=variable,y=value))+
  geom_col()+
  labs(title = "Number of Arrests in State",y="Arrests",x="Crime")
  })
  
})

