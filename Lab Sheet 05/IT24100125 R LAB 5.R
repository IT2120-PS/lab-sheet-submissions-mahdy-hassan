getwd()
setwd("C:\\Users\\it24100125\\Desktop\\IT24100125 lab 05")
getwd()
Delivery_Times <- read.table("C:\\Users\\it24100125\\Desktop\\IT24100125 lab 05\\Exercise.txt", header = TRUE)

str(Delivery_Times)


breaks <- seq(20, 70, by = 5)  #we need to break this into 5 intervals so that low val is 20 and high is 70
hist(Delivery_Times$Delivery_Time_.minutes, breaks = breaks, right = FALSE, main = "Histogram of Delivery Times", xlab = "Delivery Time", ylab = "Frequency")

#irregular multi model distribution

intervals <- cut(Delivery_Times$Delivery_Time_.minutes, breaks = breaks, right = FALSE)
freq_table <- table(intervals)

cumulative_freq <- cumsum(freq_table)

upper_bounds <- breaks[-1]  # Removes the first value (20), leaving [25,30,...,70]

plot(upper_bounds, cumulative_freq, type = "o",
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Time", ylab = "Cumulative Frequency")
