library(shiny)
library(tidyverse)
library(leaflet)
library(sf)
library(sp)
getwd()
ui <- fluidPage(
  titlePanel("APP SHINY "),
  sidebarLayout(
    sidebarPanel(
      fileInput("file1", "Ingresar CSV Aqui",
                multiple = FALSE,
                accept = c("text/csv","text/comma-separated-values,text/plain",".csv")
      ),
      tags$hr(),
      h5(helpText("Seleccione los parametros:")),
      checkboxInput(inputId = 'header', 'Header', T),
      checkboxInput(inputId = "stringAsFactors", "stringAsFactors", T),
      br(),
      radioButtons("sep", "Separador",
                   choices = c(Coma = ",",
                               puntoyComa = ";",
                               Tab = "\t",
                               espacio=''),
                   selected = ","),
      radioButtons("quote", "Cita",
                   choices = c(Ninguna = "",
                               "cita doble" = '"',
                               "cita simple" = "'"),
                   selected = '"')
      
    ),
    mainPanel(uiOutput("tb"))
  )
)

server <- function(input,output){
  data <- reactive({
    file <- input$file1
    if(is.null(file)){return()} 
    read.table(file=file$datapath,
               sep=input$sep,
               header = input$header,
               stringsAsFactors = input$stringAsFactors)
  })
  output$filedf <- renderTable({
    if(is.null(data())){return ()}
    input$file1
  })
  output$sum <- renderTable({
    if(is.null(data())){return ()}
    summary(data())
  })
  output$table <- renderTable({
    if(is.null(data())){return ()}
    data()
  })
  
  
  output$plot <- renderPlot({
    df <- read.csv(input$file1$datapath,
                   header = input$header,
                   sep = input$sep,
                   quote = input$quote)
    sf <- st_as_sf(df,coords = c("Longitude", "Latitude"),
                 crs= "+proj=longlat +datum=WGS84 +ellps=WGS84 +towgs84=0,0,0")
    plot(sf)

  })
 
  output$map<- renderLeaflet({
    df <- read.csv(input$file1$datapath,
                   header = input$header,
                   sep = input$sep,
                   quote = input$quote)
    mapa<-leaflet() %>% 
      addCircles(data = df, lat = df$Latitude, lng = df$Longitude)%>%
      addTiles()
  })
  output$tb <- renderUI({
    if(is.null(data()))
      h5("desarrollado con", tags$img(src='RStudio-Ball.png', heigth=200, width=200))
    else
      tabsetPanel(tabPanel("File name", tableOutput("filedf")),
                  tabPanel("Data", tableOutput("table")),
                  tabPanel("Resume", tableOutput("sum")),
                  tabPanel("Map", leafletOutput("map")),
                  tabPanel("Sf", plotOutput("plot"))
      )
  })
  
}


shinyApp(ui = ui, server = server)
