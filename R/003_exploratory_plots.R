##########################################################################################################
#
# 003 Exploratory Plots
# created: 10/22/2020
#
#
##########################################################################################################

library(dplyr)
#install.packages("ggplot2")
library(ggplot2)

iris_sub <- readRDS("data/iris_sub.rds")

ggplot(aes(sepal.width, petal.length, color = species), data = iris_sub) + 
  geom_point() + 
  theme_minimal()

ggsave("output/figures/scatter.jpg")
