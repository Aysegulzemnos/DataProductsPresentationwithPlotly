install.packages("plotly")

library(plotly)


plot_ly(mtcars, x = ~am, y = ~mpg, mode="markers",type = "scatter"
        ,color=as.factor(mtcars$cyl))



plot_ly(mtcars, x = ~am, y = ~mpg, mode="markers",type = "scatter"
        ,color=mtcars$disp,size=mtcars$hp)




set.seed(2018-03-10)
temp <- rnorm(100, mean = 30, sd = 10)
pressue <- rnorm(100)
dtime <- 1:100

plot_ly(x = ~temp, y = ~pressue, z = ~dtime, type = "scatter3d", color = ~temp)


data("airmiles")
head(airmiles)
plot_ly(x=time(airmiles),y=airmiles,type = "line")

plot_ly(x = ~temp, y = ~pressue, z = ~dtime, type = "scatter3d", color = ~temp)


library(plotly)
library(tidyr)
library(dplyr)
data("EuStockMarkets")

stocks <- as.data.frame(EuStockMarkets) %>%
  gather(index, price) %>%
  mutate(time = rep(time(EuStockMarkets), 5))
plot_ly(stocks, x = ~time, y = ~price, color = ~index )




set.seed(10)
x <- rnorm(200)
x <- as.ts(x) ## Convert to a time series object plot(x)
plot(x)



set.seed(10)
x <- rnorm(200)
x <- as.ts(x) ## Convert to a time series object plot(x)
plot(x)
