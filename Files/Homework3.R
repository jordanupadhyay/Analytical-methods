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
hist(x, xlab="Relative Frequency")


