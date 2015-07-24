
library(shiny)

# Define the overall UI
ui  <- shinyUI(
        
        # Use a fluid Bootstrap layout
        fluidPage(
                
                # Give the page a title
                titlePanel("Passengers per month"),
                
                # Generate a row with a sidebar
                sidebarLayout(
                        
                        # Define the sidebar with one input
                        sidebarPanel(
                                selectInput("year1", "Year from:",
                                            choices=c("1949", "1950", "1951")),
                                selectInput("year2", "Year to:",
                                        choices=c("1952", "1953", "1964")),
                                hr(),
                                helpText("Airpassanger Data", br(),
                                         "Select the year from and year to to get the appropriate time series plot.")),
                        
                        # Create a spot for the barplot
                        mainPanel(
                                plotOutput("plot1")))))