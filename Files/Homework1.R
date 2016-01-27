#Analytical Methods Homework 1

#Probability of drawing a red or black card from a deck
#black = success, red = failure

    #probability of success
n = 5        #number of trials
m = 20       #number of experiments


x<-c(1,4,3,2,5,3,2,1,0,3,4,4,2,2,0,0,1,5,3,2) #number of successes per trial
x

hist(x,main="20 Trials of Drawing Cards from a Deck",
     ylab="Frequency",xlab="Number of Successes (Red Card Drawn)")