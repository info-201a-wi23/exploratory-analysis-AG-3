data <- read.csv("Info201 Dataset.csv")
# Create the frequency table
age_freq <- table(data$AGE)

# Create the bar chart
barplot(age_freq, 
        main = "Frequency of Age in the Dataset", 
        xlab = "Age", 
        ylab = "Frequency",
        col = "steelblue", # set the color of the bars
        border = "white",  # set the color of the border of the bars
        las = 1,           # set the orientation of the x-axis labels
        cex.main = 1.5,    # increase the size of the chart title
        cex.lab = 1.2,     # increase the size of the axis labels
        cex.axis = 1.2     # increase the size of the tick labels
)