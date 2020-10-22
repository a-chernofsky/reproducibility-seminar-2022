##########################################################################################################
#
# 004 Fit Linear Model
# created: 10/22/2020
#
#
##########################################################################################################

#install.packages("broom")
library(broom)

iris_sub <- readRDS("data/iris_sub.rds")

lm1 <- lm(petal.length ~ sepal.width + sepal.length, data = iris_sub)

tidy(lm1)
glance(lm1)
