# R for Data Science
# Hadley Wickham & Garrett Grolemund
# Last updated 2022-07-01

# https://r4ds.had.co.nz/index.html

# Load packages ----

library(tidyverse)

# Data visualisation ----

# https://r4ds.had.co.nz/data-visualisation.html

# The mpg data frame
mpg
?mpg

# Creating a ggplot
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, colour = class))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy),
             colour = "blue")
