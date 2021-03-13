# STEP 0: Loading packages
library(ggplot2)
library(readr)
library(dplyr)
library(tidyr)
# STEP 1: Loading the data
CASchools <- read_csv("CASchools.csv")

# GRAPH 1: Histogram of scores distribution by subject
graph1 <- CASchools %>%
  gather("Subject", "Score", 14:15)

plot1 <- ggplot(graph1, aes(Score)) +
  geom_histogram(binwidth = 15, color = "Green", fill = "green") +
  labs(title = "Distribution of Test Scores for CA Schools by Subject",
       x = "Score", y = "Frequency") +
  facet_wrap(~ Subject)
plot1

# GRAPH 2: Scatterplot of CalWorks qualifiers vs. Test Scores
plot2 <- ggplot(graph1, aes(calworks, Score)) +
  geom_point(color = "orange") +
  labs(title = "Percentage of Students Qualifiying for CalWorks vs. Test Scores",
       x = "Percentage of Qualifying Students", y = "Score") +
  facet_wrap(~ Subject)
plot2

# GRAPH 3: Number of teachers vs percent of english learners by school size
plot3 <- ggplot(CASchools, aes(teachers, english, color = students)) +
  geom_point(position = "jitter") +
  scale_color_continuous(low = 'blue', high = "red") +
  labs(title = "Percentage of English Learners in CA Schools vs. Number of Teachers by School Size",
       x = "Number of Teachers", y = "Percentage of English Learners")
plot3
