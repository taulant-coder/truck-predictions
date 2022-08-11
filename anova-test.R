### ANOVA - Analysis if Variance


library(readxl)
Project_Diesel <- read_excel("Testing Project_Diesel.xlsx", 
                                     sheet = "2019", col_types = c("numeric", 
                                     "numeric", "numeric", "numeric", 
                                     "numeric", "numeric", "numeric", 
                                     "numeric", "numeric", "numeric", 
                                     "numeric", "numeric"))
View(Project_Diesel)

mean(Project_Diesel$January)
