
library(shiny)

data <- AirPassengers
dmn <- list(month.abb, unique(floor(time(AirPassengers))))


## Define a server for the Shiny app
server <- function(input, output) {
        
        dataInput <- reactive({
               # subset(data, subset=(substring(data$Date,1,4) == input$year))
                window(data, as.numeric(input$year1), as.numeric(input$year2))
        })
        
        ## Fill in the spot we created for a plot
        output$plot1 <- renderPlot({
                
                ## Render a barplot
                plot.ts(dataInput(),
                        main=paste(input$energy, "in", input$year),
                        ylab="Number of Passengers", 
                        xlab="Time")
        })
}
