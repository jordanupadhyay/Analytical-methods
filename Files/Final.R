#Question 1
volume = c(3.23,3.47,1.86,2.47,3.01,3.22,2.88,1.71,2.89,3.77,
            4.83,4.37,4.87,3.87,3.71)
center = c(1,1,1,1,1,2,2,2,2,2,3,3,3,3,3)

table = data.frame(volume,center)

vol.aov= aov(table$volume ~ table$center)
summary(vol.aov)