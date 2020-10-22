##########################################################################################################
#
# 002 Summary statistics
# created: 10/22/2020
#
#
##########################################################################################################

library(dplyr)

iris_sub <- readRDS("data/iris_sub.rds")

summary_table <- iris_sub %>%
  group_by(species) %>%
  summarize(N = n(),
            mean_slen = mean(sepal.length),
            median_slen = median(sepal.length),
            sd_slen = sd(sepal.length))

write.csv(summary_table, "output/tables/descriptive.csv")
