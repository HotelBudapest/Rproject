data = read.csv("untitled form.csv")

#changing columns


new_name = c("timestamp", "commute", "exercise", "intensity", "employment", "workingHours", "gender", "sleep", "screenTime")
colnames(data) = new_name
str(data)
library(tidyverse)
ggplot(data, aes(x = exercise, y = workingHours, color = intensity)) +
  geom_point() +
  labs(x = "hours exercised", y = "hourse worked", color = "Legend")
