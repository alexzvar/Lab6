library(shiny)
shinyUI(fluidPage(
  titlePanel("Формула для визначення часу, якщо відомі швидкість і відстань"),
  sidebarLayout(
    sidebarPanel(
      numericInput("Distance",label = h6("Введіть кілометраж"),value = 120), br(),
      numericInput("Speed",label = h6("Введіть швидкість"),value = 60), br(),
      actionButton("CalcValue", label = "Розрахувати час")),
    mainPanel("",p(h5("Результат:")),textOutput("Time")))))