# Coursera: Developing Data Products Course Project
>This peer assessed assignment has two parts. First, you will create a Shiny application and deploy it on Rstudio's servers. Second, you will use Slidify or Rstudio Presenter to prepare a reproducible pitch presentation about your application.

## My Shiny Application
I turned my Shiny app into a web page using RStudio’s hosting service for Shiny apps - shinyapps.io.
You can access my app with the URL here: [http://kojikami.shinyapps.io/us-population-by-state](http://kojikami.shinyapps.io/us-population-by-state):

#### Application Descriptions
* You can see detail codes for my [ui.R](https://github.com/kojikami/Coursera-DevelopingDataProducts/blob/master/ui.R) and [server.R](https://github.com/kojikami/Coursera-DevelopingDataProducts/blob/master/server.R)
* It loads the dataset for US population from 2000 to 2010
* You can interact with the model using Sliders on the left side
* Based on the Year selected, the map and the table will show the result reactively
* [Google Geo Chart with R](http://www.rdocumentation.org/packages/googleVis/functions/gvisGeoChart) is used for controlling inputs/outputs

#### A Little More Description on gvisGeoChart
The gvisGeoChart function reads a data.frame and creates text output referring to the Google Visualisation API, which can be included into a web page, or as a stand-alone page.

*Usage*
```{r}
gvisGeoChart(data, locationvar = "", colorvar = "", sizevar = "",
  hovervar = "", options = list(), chartid)
```
## My Reproducible Pitch
I created the pitch for my Shiny Application with [R Presentation](https://github.com/kojikami/Coursera-DevelopingDataProducts/blob/master/shinyapp-pitch.Rpres)
You can access my pitch with the URL here: http://rpubs.com/kojikami/us-population-by-state

## Appendix: Coursera Assignment Description
>### Shiny Application
>
>1. Write a shiny application with associated supporting documentation. The documentation should be thought of as whatever a user will need to get started using your application.
>
>2. Deploy the application on Rstudio's shiny server
>
>3. Share the application link by pasting it into the text box below
>
>4. Share your server.R and ui.R code on github
>
>### Reproducible Pitch
>
>You get 5 slides (inclusive of the title slide)  to pitch a your app. You're going to create a web page using Slidify or Rstudio Presenter with an html5 slide deck.
>
>Here's what you need
>
>1. 5 slides to pitch our idea done in Slidify or Rstudio Presenter
>
>2. Your presentation pushed to github or Rpubs
>
>3. A link to your github or Rpubs presentation pasted into the text box below
