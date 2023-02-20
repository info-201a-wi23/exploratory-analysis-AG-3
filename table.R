
dataset <- read.csv("Info201 Dataset.csv",stringsAsFactors = FALSE)
library(dplyr)

agg_table <- dataset %>% 
  group_by(SEXNAME) %>% 
  summarise(age_1_20 = sum(AGE >= 1 & AGE <= 20),
            age_21_40 = sum(AGE >= 21 & AGE <= 40),
            age_41_60 = sum(AGE >= 41 & AGE <= 60),
            age_61_80 = sum(AGE >= 61 & AGE <= 80),
            age_81_100 = sum(AGE >= 81 & AGE <= 100)) %>% 
  arrange(SEXNAME)
agg_table
