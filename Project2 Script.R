data = read.csv("untitled form.csv")

#changing columns


new_name = c("timestamp", "commute", "exercise", "intensity", "employment", "workingHours", "gender", "sleep", "screenTime")
colnames(data) = new_name

library(tidyverse)

ggplot(data, aes(sleep ,intensity)) + 
  geom_boxplot(alpha = 0.7, color = "black")+    
  labs(title = "Hours Slept at Night by Exercise Intensity",
       x = "Hours Slept at Night",
       y = "Intensity of Exercise") 

ggplot(data, aes(sleep, fill = intensity)) +
  geom_histogram(binwidth = 2, alpha = 0.8, position = "stack")+ 
  labs(title = "Histogram of Hours Slept at Night by Exercise Intensity",
       x = "Hours Slept at Night",
       y = "Frequency") +
  theme_minimal()