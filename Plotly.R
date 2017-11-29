## An analysis of the coursera johns hopkins data (from a few months back)
## Used to illustrate plotly and ggplot
##
## Brian Caffo 7/10/2014


load("courseraData.rda")


## Make sure that you've followed the first few set up steps
## https://plot.ly/ggplot2/getting-started/
## Particularly set_credentials_file(username=FILL IN, api_key=FILL IN)
library(plotly)
Sys.setenv("plotly_username"="charlydethibault")
Sys.setenv("plotly_api_key"="VO49hhI2bNa6M3zUtwJT")

library(ggplot2)
## First do a bar plot in ggplot
g <- ggplot(myData, aes(y = enrollment, x = class, fill = offering)) 
g <- g + geom_bar(stat = "identity")
g

## Let's try to get it into plot.ly
py <- plotly()
out <- py$ggplotly(g)
out$response$url

# 
data(mtcars)
plot_ly(data = mtcars,x = mtcars$wt, y = mtcars$mpg, mode = "markers")

# to post on plotlywebpage
plotly_POST(gg)