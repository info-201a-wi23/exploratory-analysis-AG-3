setwd("/Users/aaron/Desktop")
np_data <- read.csv("Info201 Dataset.csv")
Chart_2 <- np_data %>% group_by(SEXNAME) %>% summarize(Sum_Collision = sum(MAN_COLL))
ggplot(Chart_2) + geom_point(mapping = aes(x = SEXNAME, y = Sum_Collision, color = SEXNAME)) +
  labs(title = "Relationship Between Gender and Car Accidents", x = "Gender", y = "Sum Collision", color = "Gender")

