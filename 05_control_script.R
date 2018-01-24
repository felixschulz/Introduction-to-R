# Author: Felix Schulz
# Date: 24th January 2017
# Purpose: 3nd R Training session

#If commands

x<- 8
if (x>=10){
  print("x is greater than 10")
}else{print("x is less than10")
}

x <- 4
if (x>=10){
  print("x is greater or equal to 10")
}else if (x>5){
  print ("x is greater than five but less than 10")
}else{
  print("x is less than or equal to 5")
}

#Challenge 1
gapminder.FiveYearData <- read.csv("~/Desktop/Intro to R/data/gapminder-FiveYearData.csv")
View(gapminder.FiveYearData)
gapminder <- gapminder.FiveYearData

#Count number of rows in the year column where year is 2002
nrow(gapminder[(gapminder$year == 2002),])
row_2002count <- nrow(gapminder[(gapminder$year == 2002),])
if (nrow(gapminder[(gapminder$year == 2002),])>=1){
  print("There are records for 2002")
}else{
  print("Records for 2002 not found")
}


#FOR Loops
for (i in 1:10){
  print(i)
}

#Nested loops: loops inside loops
for (i in 1:5){
  for (j in c('a', 'b', 'c', 'd','e')){
    print(paste(i,j)) #paste joins two things together
  }
}

#WHILE lopops repeat until some condition is met
z<-1

while(z>0.1){
  z<-runif(1)
  print(z)
}

?cat

#Challenge 2
vec1 <- c('a', 'b', 'c')
vec2 <- c('c', 'b', 'a')

#are they the same?
all(vec1 == vec2)

# see whether one vector is contained within anoter
all(vec1 %in% vec2)


#Challenge 3: loop through gapminder by continent, print whether life exp is > or <50
unique(gapminder$continent)

#3 Steps
#1. Loop over unique continent names
#2. for each 'continent' create a temp variable that holds the mean life expectancy
#3. Print the output

for (continennamet in unique(gapminder$continent)){
  avglife <- mean(subset(gapminder, continent==continentname)$lifeExp)
  cat("Average life expectancy in", continentname, "is", avglife, "\n")
  rm(avglife)
}

threshold <-50
for (continentname in unique(gapminder$continent)){
  avglife <- mean(subset(gapminder, continent==continentname)$lifeExp)
  if (avglife < threshold){
    cat("Average life expectancy in", continentname, "is less than", threshold, "\n")
  }
  else{
    cat("Average life expectancy in", continentname, "is greater than", threshold, "\n")
  }
  rm(avglife)
}


  
  
  