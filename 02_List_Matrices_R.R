#Author Felix Schulz
#Date 17th January
#Purpose 2nd Training Session

#List and Matrices
#Lists: a list is a list of 'things' - can have a mxiture of data types

list_example <- list(1, "a", "TRUE", 15.15, -15.15)
list_example

second_list <- list(title = "Numbers", numbers = 1:10, data =  TRUE)
second_list

typeof(second_list)
typeof(second_list$title)


print(second_list$numbers)
typeof(second_list$numbers[5])


#Matrices
# In R a matrix is a vector with an addtional dimension
matrix_example <- matrix(1:50, ncol=5, nrow=10)
matrix_example
matrix_example <- matrix(1:50, ncol=5, nrow=10, byrow=TRUE)
matrix_example
matrix_example[3,7]
dim(matrix_example)

matrix_challenge7 <- matrix(c(4,1,9,5,10,7), nrow=3, ncol=2, byrow=TRUE)
matrix_challenge7
