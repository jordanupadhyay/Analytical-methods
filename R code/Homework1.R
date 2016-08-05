#Analytical Methods Homework 1

#Probability of flipping heads wth a coin

    #probability of success
n = 10        #number of trials
m = 20       #number of experiments


x<-c(6,2,7,4,10,5,6,1,5,3,4,8,2,2,0,9,3,5,3,2) #number of successes per trial
x

hist(x,main="20 Trials of Flipping a Coin",
     ylab="Frequency",xlab="Number of Successes (Heads)")