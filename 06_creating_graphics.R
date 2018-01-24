#Creating graphics
#Felix Schulz
#24th January 2018

install.packages("ggplot2")
library("ggplot2")


gapminder <- read.csv(file = "data/gapminder-FiveYearData.csv")

ggplot(data= gapminder, aes(x = gdpPercap, y = lifeExp)) + geom_point()

#Challenge 1
ggplot(data= gapminder, aes(x = year, y = lifeExp)) + geom_point()

#Challenge 2
ggplot(data=gapminder, aes(x=year, y=lifeExp, color=continent)) + geom_point()

#Layers
ggplot(data=gapminder, aes(x=year, y=lifeExp, by=country, color=continent)) + geom_line()
ggplot(data=gapminder, aes(x=year, y=lifeExp, by=country, color=continent)) + geom_line() +geom_point()

ggplot(data=gapminder, aes(x=year, y=lifeExp, by=country)) + geom_line(aes(color=continent)) + geom_point()


#Challenge 4a
ggplot(data=gapminder, aes(x=gdpPercap, y=lifeExp)) + geom_point(size=0.5, color="blue") + scale_x_log10() + geom_smooth(method = "lm", size=1.5, color="black")
ggplot(data=gapminder, aes(x=gdpPercap, y=lifeExp, color=continent)) + geom_point(size=0.5, shape=2) + scale_x_log10() + geom_smooth(method = "lm", size=0.5)
