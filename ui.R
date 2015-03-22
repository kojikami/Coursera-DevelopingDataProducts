require(shiny)

shinyUI(pageWithSidebar(
        headerPanel("US Population by State"),
        sidebarPanel(
                sliderInput("Year", "Year & Population to be displayed:", 
                            min=2000, max=2010, value=2000, step=1,
                            animate=TRUE)                
        ),
        mainPanel(
                h3(textOutput("year")), 
                htmlOutput("chart"),
                htmlOutput("gvis")
        )
)
)