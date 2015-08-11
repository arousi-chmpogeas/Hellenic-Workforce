library(googleVis)

library(shiny)


HellenicWorkforce=read.csv2("HellenicWorkforce.csv", header = FALSE)

NameOfAttributes<-c("Workforce","Year","Education")

colnames(HellenicWorkforce)<-NameOfAttributes

Motion=gvisMotionChart(HellenicWorkforce,idvar="Education",timevar="Year",options=list(state='{"colorOption":"_UNIQUE_COLOR","showTrails":false};'))


shinyServer(
  function(input, output) {
    output$hellenicworkforce <- renderGvis({Motion})
  }
) 
