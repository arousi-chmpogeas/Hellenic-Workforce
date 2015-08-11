library(shiny)
shinyUI(fluidPage(
  headerPanel("Visualization of Hellenic Workforce"),
  sidebarLayout(position = "left",
                sidebarPanel(
                  tabsetPanel(type = "tabs", 
                              tabPanel("Description",
                                       h5('This visualization shows the variance of the total Workforce in Greece in relation to their cognitive, level from 2005 to 2010.')
                              ), 
                              tabPanel ("Data", h5('WorkForce Data:',a("Hellenic Statistical Authority", href="http://www.statistics.gr/portal/page/portal/ESYE/PAGE-database"))),
                              tabPanel("License",
                                       HTML('<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" href="http://purl.org/dc/dcmitype/InteractiveResource" property="dct:title" rel="dct:type">Visualization of Hellenic Workforce Education</span> license: <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.'),
                                       br()
                              ) 
                  )),
                mainPanel(
                  h4('Workforce of Greece with the Educational degree from 2005 to 2010'),
                  htmlOutput("hellenicworkforce")
                ))
))
