#Subestting data

x <- c(5.4, 6.2, 7.0, 4.1, 8.3)
x
#Give columns labels
names(x) = c("a", "b", "c", "d", "e")
x

#Refer to elements
x[1]
x[c(1,4)]
x[1:4]

#Skipping and removing
x[-2]
x[c(-1,-3)]

# using names
x["a"]

x<-c(5.4, 6.2, 7.1, 4.8, 7.5)
names(x) = c("a", "b", "c", "d", "e")
print(x)

#Challenge 1
x[c("b","c", "d")]
x[c(2,3,4)]
x[2:4]
x[-c(1,5)]
