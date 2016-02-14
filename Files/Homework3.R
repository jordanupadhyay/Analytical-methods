#Question 1
x <- c(2.8,3.0,3.2,0.8,2.7,1.6,3.5,3.6,1.2,2.4,3.7,2.2,2.6,3.4,3.7,2.8,3.5,3.5,2.8,
      9.8,2.0,2.8,4.1,2.5,2.2,3.7,2.7,4.2,2.5,2.8)
x
x.row <-rbind(x)
x.cut <- cut(x, 7)
x.freq <- table(x.cut)
x.freq
x.relfreq <- x.freq/30
x.relfreq

table<-cbind(x.freq,x.relfreq)
table
hist(x.relfreq, xlab="Relative Frequency")

median(x)
getmode(x)
mean(x)

var(x)
sd(x)
coeff<-coef(var(x))
coeff

#Question 6
y<-c(44.2, 30.1, 40.5, 43.3, 41.2, 41.0, 41.4, 40.1, 39.4, 43.6, 39.4, 39.7,
    40.4, 35.8, 31.0, 41.2, 40.7, 42.5, 39.8, 40.3, 39.2)
y.row
y.cut <- cut(y, 7)
y.freq <- table(y.cut)
y.freq
y.relfreq <- y.freq/21
y.relfreq

table1<-cbind(y,y.relfreq)
table1
table2<-cbind(y.relfreq)
table2
hist(y.relfreq, xlab="Relative Frequency")