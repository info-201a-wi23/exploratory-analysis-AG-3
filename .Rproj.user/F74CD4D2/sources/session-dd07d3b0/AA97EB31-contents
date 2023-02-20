# Load the ggplot2 package
library(ggplot2)

# Read the CSV file
data <- read.csv("Info201 Dataset.csv")

# Create the frequency table 2
age_freq <- table(data$AGE)

Age <- data$AGE
Age <- Age[1:(length(Age)-2)]
age_freq <- age_freq[1:(length(age_freq)-2)]
# Create the bar chart with the connecting line
C2 <- ggplot(data = data.frame(Age = names(age_freq), Frequency = age_freq), aes(x = Age, y = age_freq)) + 
  geom_bar(stat = "identity", fill = "steelblue") + 
  geom_line(aes(x = as.numeric(Age), y = age_freq), color = "red", size = 1) + 
  labs(title = "Frequency of Age in the Dataset", x = "Age", y = "Frequency") + 
  theme_classic() + 
  theme(plot.title = element_text(size = 20, face = "bold"), 
        axis.title = element_text(size = 16), 
        axis.text = element_text(size = 14), 
        axis.text.x = element_text(angle = 90, size = 11, vjust = 0.5)) 
