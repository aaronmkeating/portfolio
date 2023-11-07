#Day 2
#Project: Build a Shiny web application in R to visualize your data.
#This project used the car prices data set in the modeldata library

library(shiny)
library(modeldata)

utils::data("car_prices", package = "modeldata")

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("Car Prices"),

        # Show a plot of the generated distribution
        mainPanel(
           plotOutput("distPlot")
        )
)

# Define server logic required to draw a scatter plot
server <- function(input, output) {

    output$distPlot <- renderPlot({
        # generate bins based on input$bins from ui.R
        y    <- car_prices$Price
        x    <- car_prices$Mileage

        # draw the box plot
        plot(x, y, col = car_prices$Cylinder, border = 'white',
             xlab = 'Mileage',
             ylab = 'Price',
             main = 'Mileage vs Price')
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
