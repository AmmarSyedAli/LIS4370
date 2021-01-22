assignment2 <- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)
myMean <- function(assignment2) { return(sum(assignment)/length(someData)) }

# The function returned an error for the following reasons. First, the formal argument does not appear in the actual function itself, 
# as the formal argument is assignment2 and the variable assignment in the function are thought of as two distinct variables. Secondly, 
# the variable someData is not declared in the function, nor can any arguments be passed into that value which would also make the function 
# return an error even after rectifying the error mentioned above.
