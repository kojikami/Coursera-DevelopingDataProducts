require(googleVis)
require(shiny)
library(RCurl)
library(reshape2)

## Prepare data to be displayed
## Load US population data by state from 2000 - 2010
load("data/uspop2000.RData")

## Cleansing the dataset
x <- uspop2000
colnames(x)[5] <- 2000; colnames(x)[6] <- 2001; colnames(x)[7] <- 2002
colnames(x)[8] <- 2003; colnames(x)[9] <- 2004; colnames(x)[10] <- 2005
colnames(x)[11] <- 2006; colnames(x)[12] <- 2007; colnames(x)[13] <- 2008
colnames(x)[14] <- 2009; colnames(x)[15] <- 2010
y <- aggregate(. ~ State, data=x, FUN=sum)

temp <- melt(y, id.vars=c("City", "State", "Lat", "Long"))
colnames(temp)[5] <- "year"; colnames(temp)[6] <- "population"

dat <- data.frame("state" = state.name[match(temp$State, state.abb)], 
                 "population" = temp$population,
                 "year" = as.numeric(as.character(temp$year)))

shinyServer(function(input, output) {
        myYear <- reactive({
                input$Year
        })
        output$year <- renderText({
                paste("For Year", myYear())
        })
        output$gvis <- renderGvis({
                myData <- subset(dat, 
                                 (year > (myYear()-1)) & (year < (myYear()+1)))

                geo <- gvisGeoChart(na.omit(myData),
                             locationvar="state", colorvar="population",
                             options=list(region="US", displayMode="regions", 
                                          resolution="provinces",
                                          width=600, height=400))
                
                tbl <- gvisTable(na.omit(myData), 
                                 options=list(height=300, width=300))
                
                gvisMerge(geo, tbl, horizontal=FALSE)
                
        })
})