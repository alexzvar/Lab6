library(shiny)
library(car)
shinyServer(function(input, output) {
	values <- reactiveValues()
	observe({
		input$CalcValue
		values$Time <- isolate(input$Distance / input$Speed)})
    output$Time <- renderText({
    if(input$CalcValue == 0) ""
    else paste("Розрахований час на подолання кілометражу:", values$Time, "годин")})
})