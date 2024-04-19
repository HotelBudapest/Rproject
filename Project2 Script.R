data = read.csv("Untitled form.csv")

#creating a list of new names for the columns of the data.
new_name = c("timestamp", "commute", "exercise", "intensity", "employment", "workingHours", "gender", "sleep", "screenTime")


#changing the names of the columns of the data to the new ones.
colnames(data) = new_name

#loading tidyverse library for using ggplot.
library(tidyverse)

#The sleep time data has been categorized into custom bins where we define the intervals to be [0,6), [6,7), [7,8), [8,9), [9,Inf), and store the new binned data in sleep_binned.
data$sleep_binned = cut(data$sleep, breaks = c(0, 6, 7, 8, 9, Inf), 
                        labels = c("0-6", "6-7", "7-8", "8-9", "9+"), 
                        include.lowest = TRUE, right = FALSE)

#Making a barchart with ggplot.
ggplot(data , aes(sleep_binned, fill = intensity)) +
  geom_bar(position = "stack")+ 
  labs(title = "Comparitive Bar Chart between Hours Slept at Night and Exercise Intensity",
       x = "Hours Slept at Night",
       y = "Frequency") + 
  theme_minimal()