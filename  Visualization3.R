setwd("/Users/aaron/Desktop")
np_data <- read.csv("Info201 Dataset.csv")
Chart_3 <- np_data %>% group_by(SEXNAME) %>% summarize(Sum_Injury = sum(INJ_SEV))
ggplot(Chart_3, aes(x="", y=Sum_Injury, fill=SEXNAME)) +
  geom_bar(width=1, stat="identity") +
  coord_polar("y", start=0) +
  labs(title = "Relationship Between Gender and Degree of Injury", fill = "Gender") +
  theme_void() +
  theme(legend.position = "right")
