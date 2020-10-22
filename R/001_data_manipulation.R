##########################################################################################################
#
# 001 Data Manipulation: read in iris data and perform some data manipulation
# created: 10/22/2020
#
#
##########################################################################################################

#install.packages(dplyr)

library(dplyr)

data("iris")

iris_sub <- iris %>%
  rename_all(tolower) %>%
  dplyr::filter(species != "setosa")

saveRDS(iris_sub, "data/iris_sub.rds")
