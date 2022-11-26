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

ggplot(dataset, aes(x = size_5c, y = E235)) +
  geom_smooth(method = "lm", se = T) +
  ylab("Democracy index") +
  xlab("City Size")
  theme_light()
  
#The graph is not a flat line so there is correlation between the variables. We 
#can notice that if the city size increases, the level of the importance
#of the democracy decreases

