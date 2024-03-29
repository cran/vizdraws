## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup, eval=FALSE--------------------------------------------------------
#  library(shiny)
#  library(shinydashboard)
#  library(glue)
#  
#  ui <- dashboardPage(
#    dashboardHeader(),
#    dashboardSidebar(
#      numericInput(
#        "prior_mean",
#        label = h3("Prior Mean"),
#        value = 0,
#        step = 0.1
#      ),
#      numericInput(
#        "prior_sd",
#        label = h3("Prior SD"),
#        value = 1,
#        min = 0.01,
#        step = 0.1
#      )
#    ),
#    dashboardBody(vizdraws::vizdrawsOutput('chart'))
#  )
#  
#  server <- function(input, output) {
#    output$chart <- vizdraws::rendervizdraws({
#      vizdraws::vizdraws(
#        prior = glue("N({input$prior_mean},{input$prior_sd})"),
#        posterior = rnorm(1000, mean = 0.2, sd = 0.1),
#        MME = 0.1,
#        threshold = 0.7,
#        display_mode_name = TRUE,
#        title = "Shiny Example"
#      )
#    })
#  }
#  
#  shinyApp(ui, server)

## ----iframe, echo=FALSE, out.width="100%"-------------------------------------
knitr::include_url("https://ignacio.shinyapps.io/shiny_vizdraws/", 
                   height = "450px")

