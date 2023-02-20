setwd("/Users/aaron/Desktop")
np_data <- read.csv("Info201 Dataset.csv")
Chart3 <- np_data %>% filter(SEXNAME == "Male" | SEXNAME == "Female") %>%  group_by(INJ_SEV, SEXNAME) %>% summarize(count = n())
C3 <- ggplot(Chart3, aes(fill=INJ_SEV, y = count, x = SEXNAME)) + 
  geom_bar(position = "fill", stat = "identity") +
  scale_fill_continuous(low = "light blue", high = "dark blue")
  