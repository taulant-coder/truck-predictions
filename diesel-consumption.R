# Hypothesis testing

####################################################################

# Project: Invastigating means of diesel consumption 
# Researcher: Taulant Elshani
# Place: Vienna, Austria
# Date: 05/08/2022

####################################################################

############################################################################
# The purpose of this study is to compare fuel 
# consumption for the years 2017/2022. In our
# preliminary investigations we have observed 
# slight but consistent changes in the fuel consumption 
# of our trucks for the same distances. Now we
# have decided to develop a more in-depth analysis of this matter.
# First, the confidence intervals will be determined by computer, then the 
# hypotheses will be tested.
############################################################################




############

# The study is divided into
# three main parts: hypothesis
# testing for the average,
# for the variance, and finally 
# the ANOVA analysis to compare 
# the averages for many consecutive 
# years. In the end, two reports will
# be drafted: a detailed one and a 
# shorter executive report.

##########

#####
# Claim and Hypothesis
#
#
####


# Loading and preparing dataset

# Year 2019

library(readxl)

Diesel_2019 <- read_excel("Testing Project_Diesel.xlsx", 
                             sheet = "2019", col_types = c("numeric", 
                             "numeric", "numeric", "numeric", 
                             "numeric", "numeric", "numeric", 
                             "numeric", "numeric", "numeric", 
                             "numeric", "numeric"))


View(Diesel_2019)

Testing_Project_Oil <- read_excel("Testing Project_Oil.xlsx", 
                                  sheet = "2019", col_types = c("numeric", 
                                  "numeric", "numeric", "numeric", 
                                  "numeric", "numeric", "numeric", 
                                  "numeric", "numeric", "numeric", 
                                  "numeric", "numeric"))
View(Testing_Project_Oil)




Diesel_2022 <- read_excel("Testing Project_Diesel.xlsx", 
                                     sheet = "2022", col_types = c("numeric", 
                                     "numeric", "numeric", "numeric", 
                                     "numeric", "numeric", "numeric", 
                                     "numeric", "numeric", "numeric", 
                                     "numeric", "numeric"))
View(Diesel_2022)

### Descriptive Statistics % Exploratory analysis

mean(Project_Diesel$January)

mean(Project_Diesel$February)

var(Project_Diesel$January)

var(Project_Diesel$February)

Project_Diesel %>% ggplot(aes(January)) +
  geom_histogram(color = "red", fill = "blue")

Project_Diesel %>%
  ggplot(aes(January, February)) +
  geom_boxplot() +
  geom_point(aes(size = February, color = March))


# Preliminary mean assesment

as.numeric(as.character(mean(Diesel_2019)))

sapply(Diesel_2019, class)
  

mean(Diesel_2019)

### Hypothesis Testing


### Claim: Management is convinced that 
### more diesel has been consumed in 2019 than 2022

# Ho: mu < mu

# Ha: mu > mu

# Investigation No. #1

t.test(Diesel_2019, Diesel_2022, alternative = "greater", conf.level = 0.95, 
       paired = FALSE)

test <- t.test(Diesel_2019, Diesel_2022, alternative = "greater", conf.level = 0.95, 
               paired = FALSE)

test$stderr


###########################################################################
# Conclusion

# Welch Two Sample t-test
# 
# data:  Diesel_2019 and Diesel_2022
# t = 8.8377, df = 352.06, p-value < 2.2e-16
# alternative hypothesis: true difference in means is greater than 0
# 95 percent confidence interval:
#   1593.935      Inf
# sample estimates:
#   mean of x mean of y 
# 9356.794  7397.178 

# 1. We have enough evidence to reject Ho.

# 2. The p-value is 0.00000000000000022

# 3. alpha is 0.05
###########################################################################

#########################################################################

# Confidence intervals test

t.test(Diesel_2019)

t.test(Diesel_2022)

# One Sample t-test
# 
# data:  Diesel_2019
# t = 56.143, df = 179, p-value < 2.2e-16
# alternative hypothesis: true mean is not equal to 0
# 95 percent confidence interval:
#   9027.925 9685.664
# sample estimates:
#   mean of x 
# 9356.794 
# 
# > t.test(Diesel_2022)
# 
# One Sample t-test
# 
# data:  Diesel_2022
# t = 50.577, df = 179, p-value < 2.2e-16
# alternative hypothesis: true mean is not equal to 0
# 95 percent confidence interval:
#   7108.572 7685.783
# sample estimates:
#   mean of x 
# 7397.178 
#########################################################################

# Testing mean hypothesis for oil consumption

library(readxl)
Project_Oil_2019 <- read_excel("Testing Project_Oil.xlsx", 
                                  sheet = "2019", col_types = c("numeric", 
                                  "numeric", "numeric", "numeric", 
                                  "numeric", "numeric", "numeric", 
                                  "numeric", "numeric", "numeric", 
                                  "numeric", "numeric"))
View(Project_Oil_2019)



Project_Oil_2022 <- read_excel("Testing Project_Oil.xlsx", 
                                  sheet = "2022", col_types = c("numeric", 
                                  "numeric", "numeric", "numeric", 
                                  "numeric", "numeric", "numeric", 
                                  "numeric", "numeric", "numeric", 
                                  "numeric", "numeric"))
View(Project_Oil_2022)


t.test(Project_Oil_2019, Project_Oil_2022, alternative = "greater", 
       conf.level = 0.95)
