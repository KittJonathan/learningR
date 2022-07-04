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

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, colour = displ < 5))

# Facets

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(~ class, nrow = 2)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ cyl)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(. ~ cyl)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(. ~ cyl)
