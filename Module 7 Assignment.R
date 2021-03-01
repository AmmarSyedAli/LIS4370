# Download any type of data (from the web or use datasets package) or create your own set. 
# Then, on the second step, determine if generic function as discussed in this 
#  module can be assigned to your data set, and if not, why?

# S3 Example 1
data <- list(model = "Camry", miles = 25489, accidents = 0, color = "Blue")
class(data) <- 'car'
head(data)

# S3 Example 2
data2 <- list(height = 5, age = 7, gender = "M", bloodtype = "O+")
class(data2) <- 'patient'

# S4 example 1
setClass("Child",
         representation(name = "character",
                        age = "numeric"))
data3 <- new("Child", name = "Kate", age = 5)
data3

# S4 example 2
setClass("Pet",
         representation(name = "character",
                        type = "character"))
data4 <- new("Pet", name = "Fido", type = "Dog")
data4