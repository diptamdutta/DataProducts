## Course Project data products Shiny application"
## author: "Pradeep K. Pant, ppant@cpan.org"
## date: "Aug 10, 2016"

## Load Shiny library
library(shiny)
library(datasets)
library(data.table)
library(dplyr)
library(ggplot2)

# Server logic
# We will analyse H1B Visa approval Data Set taken from https://www.kaggle.com, First 500 rows
shinyServer(function(input, output) {
        # We'll render the selected columns of our dataset and will use datatable techniques to filter and search data
        output$Details <- renderDataTable({
               
                output$text1 <- renderText({
                        
                })
                # Read our dataset 
                myfile <- file.path("data.csv")
                h1bData <-
                        read.csv(myfile,
                                 header = T, sep = ',')

                setDT(h1bData)[,c("X","lon","lat"):=NULL]
                
                # filter based on the Status 
                h1bData <-
                        filter(h1bData, h1bData$CASE_STATUS == input$var)
                # fill datatable based on the col selected
                data <-h1bData
                data
                # Implement page  menu
        }, options = list(
                lengthMenu = c(5, 10, 20),
                pageLength = 10
        ))
        
        # lets use ggplot2 to demonstrate acceptance status at various level
        output$plot1 <- renderPlot({
                myfile <- file.path("data.csv")
                h1bData <-
                        read.csv(myfile,
                                 header = T, sep = ',')
                
                setDT(h1bData)[,c("X","lon","lat"):=NULL]
                options(scipen=100)
                p <-
                        qplot(
                                h1bData$CASE_STATUS,
                                h1bData$PREVAILING_WAGE,
                                data = h1bData,
                                color = h1bData$CASE_STATUS,
                                main = "H1B Acceptance state",
                                xlab = "STATUS",
                                ylab = "PREVAILING WAGE"
                        )
                p + theme_bw()
                p + theme(
                        axis.title = element_text(
                                face = "bold.italic",
                                size = "12",
                                color = "blue"
                        ),
                        legend.position = "bottom"
                )
                p + guides(fill = guide_legend(title = "Acceptance Status VS Wage"))
        })
})
