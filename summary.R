library(dplyr)
library(ggplot2)
dataset <- read.csv("Info201 Dataset.csv",stringsAsFactors = FALSE)

summary_info <- list()

dataset_cleaned <- dataset %>% 
  filter(AGE >= 1 & AGE <= 100)
summary_info$average_age <- mean(dataset_cleaned$AGE)
summary_info$average_age

summary_info$num_ovservations <- nrow(dataset_cleaned)
summary_info$num_ovservations

cases_F <- dataset_cleaned %>% 
  filter(SEXNAME == "Female") 
summary_info$cases_Female <-nrow(cases_F)
summary_info$cases_Female

cases_M <- dataset_cleaned %>% 
  filter(SEXNAME == "Male") 
summary_info$cases_Male <-nrow(cases_M)
summary_info$cases_Male

summary_info$mean_Severity <- mean(dataset_cleaned$INJ_SEV)
summary_info$mean_Severity

print(summary_info)
