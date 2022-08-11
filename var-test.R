#####

# Analysis of Variance

####

################################################################
# The second phase of research. In this
# part of the project, the difference in the 
# variability of fuel consumption for the
# period 2018/2022 will be examined.
# 
# Research question and hypotheses:
# 
#   
# In the early periods, oil consumption was more
# concentrated and more consistent around the general average. 
# Through variance analysis we will seek to find
# how much time it takes to reach the same physical
# distances now compared to previous years. This analysis
# tells us about accessibility 
# and traffic on highways in the United States.
################################################################
####

# Exploratory Preliminary Aalysis

library(readxl)

Project_Diesel <- read_excel("Testing Project_Diesel.xlsx", 
                             sheet = "2019", col_types = c("numeric", 
                             "numeric", "numeric", "numeric", 
                             "numeric", "numeric", "numeric", 
                             "numeric", "numeric", "numeric", 
                             "numeric", "numeric"))


View(Project_Diesel)



Project_Oil <- read_excel("Testing Project_Oil.xlsx", 
                                  sheet = "2019", col_types = c("numeric", 
                                  "numeric", "numeric", "numeric", 
                                  "numeric", "numeric", "numeric", 
                                  "numeric", "numeric", "numeric", 
                                   "numeric", "numeric"))
View(Project_Oil)

mean(Project_Diesel$January)

# Preparing dataset

library(readxl)

Project_Diesel_2019 <- read_excel("Testing Project_Diesel.xlsx", 
                                     sheet = "2019", col_types = c("numeric", 
                                      "numeric", "numeric", "numeric", 
                                      "numeric", "numeric", "numeric", 
                                      "numeric", "numeric", "numeric", 
                                      "numeric", "numeric"))
View(Project_Diesel_2019)


Project_Diesel_2022 <- read_excel("Testing Project_Diesel.xlsx", 
                                     sheet = "2022", col_types = c("numeric", 
                                     "numeric", "numeric", "numeric", 
                                     "numeric", "numeric", "numeric", 
                                     "numeric", "numeric", "numeric", 
                                     "numeric", "numeric"))
View(Project_Diesel_2022)


Dies_2019 <- c(5132,
               7740,
               11796,
               12014,
               11713,
               6387,
               9541,
               8184,
               12588,
               10955,
               5147,
               6392,
               11219,
               9482,
               12584,
               6666,
               7002,
               11273,
               10602,
               9782,
               5516,
               11373,
               6195,
               9771,
               11185,
               10826,
               6186,
               10800,
               5307,
               10335,
               12933,
               9050,
               11399,
               10269,
               8609,
               11347,
               10305,
               12140,
               6971,
               11320,
               10391,
               8614,
               8193,
               8456,
               7201,
               9576,
               12386,
               11766)



Dies_2022 <- c(5629,
               9602,
               9971,
               7415,
               5732,
               8485,
               8464,
               8431,
               8604,
               8136,
               5002,
               5989,
               4689,
               7225,
               6283,
               4400,
               9722,
               4645,
               6782,
               5609,
               7461,
               6888,
               10174,
               8982,
               7373,
               5582,
               7123,
               9005,
               4699,
               4059,
               9476,
               6792,
               4180,
               10408,
               8098,
               6449,
               9869,
               10426,
               7459,
               9420,
               6419,
               10519,
               4803,
               7105,
               4382,
               6752,
               5459,
               6351)


var.test(Dies_2019, Dies_2022, alternative = "greater", 
         conf.level = 0.98)

# Oil testing

Oil_2019 <- c(945,
              982,
              659,
              586,
              998,
              91,
              1081,
              889,
              865,
              309,
              629,
              463,
              1047,
              89,
              887,
              185,
              878,
              138,
              90,
              663,
              366,
              164,
              1032,
              839,
              988,
              859,
              542,
              287,
              360,
              227,
              750,
              912,
              406,
              337,
              97,
              1113,
              992,
              660,
              789,
              792,
              1149,
              354,
              997,
              274,
              444,
              78,
              721,
              875)

Oil_2022 <- c(156,
             624,
             1430,
             294,
             1123,
             965,
             1241,
             920,
             762,
             510,
             1239,
             618,
             549,
             441,
             110,
             809,
             210,
             697,
             1330,
             346,
             1283,
             225,
             1049,
             348,
             1229,
             838,
             1457,
             1289,
             1161,
             918,
             1460,
             374,
             402,
             142,
             518,
             956,
             413,
             383,
             1427,
             756,
             387,
             688,
             1069,
             163,
             322,
             1097,
             767,
             1385)


var.test(Oil_2019, Oil_2022, alternative = "greater", 
         conf.level = 0.98)
