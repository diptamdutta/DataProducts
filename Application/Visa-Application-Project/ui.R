## Course Project data products Shiny application"
## Author: "Diptam Dutta"
## date: 27/10/2017

## Load Shiny library
library(shiny)


shinyUI(fluidPage(
        # Application title
        titlePanel(
                "US Visa Application Analysis"
        ),
        br(),
        br(),
        
        
        sidebarPanel(
                helpText("Analyse US H1B visa status, data source kaggle"),
                selectInput(
                        "var",
                        label = "Choose an status",
                        choices = c("CERTIFIED", "CERTIFIED-WITHDRAWN", "WITHDRAWN", "DENIED"),
                        selected = "CERTIFIED"
                )
        ),
        br(),
        br(),
        # Call Data table
        mainPanel(
                dataTableOutput('Details'),
                # Pass status name
                textOutput("text1"),
                br(),
                br(),
                # Plot coliform levels status-wise
                plotOutput("plot1")
        )
))