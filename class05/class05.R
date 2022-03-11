#class 5 data visualization


plot(1:5) 

#Time to upgrade plots
#Use ggplot2

#install.packages("ggplot2)

library(ggplot2)
plot(cars)

#data + AESthetics + GEOMS

p <- ggplot(data = cars)+
  aes(x=speed, y = dist) + 
  geom_point() + geom_line() + geom_smooth(method = "lm") +
   labs(title = "Speed and stopping distance of cars", subtitle = "Note: We see this plot in some time") +
  labs( x = "Speed(MPH)", y = "Distance(ft)")
p
#load genes
url <- "https://bioboot.github.io/bimm143_S20/class-material/up_down_expression.txt"
genes <- read.delim(url)
head(genes)

ggplot(genes) +
  aes(Condition1, Condition2, col=State) + 
  geom_point(alpha = 0.2) + 
  theme_bw()



