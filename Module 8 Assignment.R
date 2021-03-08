# Step # 1
library(readr)
data <- read_delim("Assignment 6 Dataset-1.txt", ',', col_names = TRUE)
library(plyr)
StudentAverage <- ddply(data, 'Sex',transform,Grade.Average=mean(Grade))
write.table(StudentAverage, "Students_Gendered_Mean")

#Step # 2 Convert the data set to a dataframe for names whos' name contains the letter i, 
# then create a new data set with those names, Write those names to a file separated by 
# comma's (CSV)
i_students <- subset(data, grepl("i", data$Name, ignore.case=T))
write.table(i_students, "I-Students")

