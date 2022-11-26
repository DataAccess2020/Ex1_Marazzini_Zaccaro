install.packages("tidyverse")
library(tidyverse)



cor <- lm(size_5c ~ E235,
          data = dataset)

summary(cor)

#H0: statistically independence
#Ha: statistically dependence

#P value is very small
#T value is very big
# we can reject the Null Hypothesis --> there is association and dependence between the two variables
# R-squared value is small --> weak correlation