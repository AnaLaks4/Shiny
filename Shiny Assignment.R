#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(dplyr)
library(data.table)

# Define UI for application that draws a histogram
ui <- fluidPage(
   
   titlePanel("Starwars Character Table"),
   dataTableOutput("mytable")
   
   

)

# Define server logic required to draw a histogram
server <- function(input, output) {
   
   output$mytable <- renderDataTable({
     a<-starwars[,1:10]
   })
}

# Run the application 
shinyApp(ui = ui, server = server)

