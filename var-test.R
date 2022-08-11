#####

# Analysis of Variance

####

# Exploratory Preliminary Aalysis

# Data set

T <- mtcars


library(dplyr)

hist(mtcars$disp)

boxplot(mtcars$mpg, mtcars$disp, mtcars$cyl, 
        mtcars$drat, mtcars$hp)

library(ggplot2)
library(ggplot2movies)

M <- ggplot2movies::movies


ggplot(data = M, aes(year)) +
  geom_histogram(color = "black", 
                 fill = "red") + 
  xlab("Year") + 
  ylab("Frequency") 

 # Boxplot

 M %>%
   ggplot(aes(year)) +
   geom_boxplot()

 help("qplot") 
 
 help("ggplot2")
 