setwd("/Users/aaron/Desktop")
np_data <- read.csv("Info201 Dataset.csv")
Chart_1 <- np_data %>% group_by(SEXNAME) %>% summarize(Sum_Collision = sum(MAN_COLL))
C1 <- ggplot(Chart_1, aes(x="", y=Sum_Collision, fill=SEXNAME)) +
  geom_bar(width=1, stat="identity") +
  coord_polar("y", start=0) +
  theme_void() +
  theme(legend.position = "right") +
  labs(title = "Relationship Between Gender and Sum Number of Collision", x = "Gender", y = "Sum Collision", color = "Gender")
# Describe why you chose this chart and what information it reveals



