#Exploring Data Frames

cats <- read.csv(file="Data/feline_data.csv")

#add another columns
age <- c(2,3,5)
cbind(cats,age)

cats <- cbind(cats,age)
cats

levels(cats$coat) <- c(levels(cats$coat), "tortoiseshell")
newrow <- list("tortoiseshell", 3.3, TRUE, 9)
cats <- rbind (cats, newrow)

# Challenge1
human.age <- c(cats$age * 7)
human.age_factor <- as.factor(human.age)
human.age_numeric <- as.numeric(human.age_factor)
human.age_bacl <- human.age_numeric/7

#Challenge 2
df <- data.frame(first = c("Felix"), last = c("Schulz"), lucky = 6, stringsAsFactors = FALSE)
df <- rbind(df, list("Tom", "left", 20))
df <- rbind(df, list("Murat", "right", 7))
coffeebreak <- c(TRUE, TRUE, TRUE)
df<-cbind(df,coffeebreak)
df


#Realistic Example
install.packages("gapminder")
library("gapminder")
download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv", destfile = "data/gapminder-FiveYearData.csv")
gapminder <- read.csv("data/gapminder-FiveYearData.csv")

str(gapminder)
colnames(gapminder)
head(gapminder)
tail(gapminder)

#Challenge 3
tail(gapminder, n=10)

#abitrary sample
gapminder[sample(nrow(gapminder), 5), ]
gapminder[1000,5]
gapminder [767,]

#Challenge 4
source(file="script/Gapminder_loading.R")

#Challenge 5
str(gapminder)
dim(gapminder)
typeof(gapminder$country)
str(gapminder$country)





