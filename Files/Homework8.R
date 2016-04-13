#Question 1
#phase 1
n = c(5,15,19,76,120,81,37,15,6,18,21,48,67,115,40,20,12,2)
N = 750
n1 = sum(x)
n1
n2 = 72

x1 = c((4.2*5),(6.3*18),(8.6*15),(11.3*21),(14.3*19),(17.6*48),(21.1*11),(25.0*67),
      (29.2*13),(33.7*115),(38.5*15),(43.5*40),(48.9*17),(54.6*20),(60.6*19), 
      (67.2*12),(72.5*21),(78.0*2))
sum_x1 = sum(x1)
x1bar = sum_x1/n1
x1bar

#phase 2
x2 = c(20.2,32.8,42.6,6.4,39.4,20,28,39.5,35.7,29.2,67.2,43.5,33.7,4.2,33.7,25,
       21.1,17.6,29.2,33.7,21.1,29.2,38.5,43.5,25,54.6,33.7,17.6,
       29.2,33.7,72.5,11.3,29.2,17.6,25,33.7,17.6,21.1,43.5,11.3,
       21.1,38.5,60.6,33.7,67.2,72.5,48.9,48.9,21.1,29.2,29.2,17.6,
       6.3,33.7,38.5,11.3,25,29.2,21.1,29.2,33.7,21.1,29.2,29.2,22.1,
       39.5,44.5,20.1,28.2,32.7,44.5,77.3)
y2 = c(25.3,31.4,37.2,4.1,31.3,16.4,22,41.2,29.3,22.8,68.8,39.6,36.7,4.5,17.6,
       16.8,22.6,11.5,17.1,34.8,19.6,13.3,33.4,56.4,20.1,53.4,26.9,14,33.2,23.7,
       69.6,6.2,26.6,10.3,18.3,26.9,12.4,19.4,50.4,6.3,16,40.6,63.3,31.4,81.7,87.8,
       40.1,61.8,14.5,22.1,27.1,17,6.2,32.8,37.1,14,19.6,25.2,20.4,31.3,37.9,16.4,
       29,25.9,17.3,28.1,39,19,21.1,28.4,48.3,85.7)

phase2 = data.frame(x2,y2)
phase2$x2y2 <- phase2$x2 * phase2$y2


sum.x2 = sum(x2)
sumsquared.x2 = sum(x2^2)
x2bar = mean(x2)
x2bar
s2.x2 = var(x2)

sum.y2 = sum(y2)
sumsquared.y2 = sum(y2^2)
y2bar = mean(y2)
y2bar
s2.y2 = var(y2)

sum.x2y2 = sum(phase2$x2y2)

#attempted to calculate beta manually, seems incorrect though
#beta.num = (sum.x2y2 - ((sum.x2*sum.y2)/72))
#beta.denom = (sumsquared.x2-((sum.x2^2)/72))
#beta.hat = beta.num/beta.denom
#beta.hat [1] 1.15326


simpreg <- lm(x2 ~ y2, data=regress) 
print(simpreg)
anova(simpreg)
simpreg_sum <- summary(simpreg)
simpreg_sum
beta <- simpreg_sum$coef
beta
beta[2]

ssct = sumsquared.x2 - ((sum.x2^2)/n2)
ssct
ssr = beta[2] * (sum.x2y2-(sum.y2*sum.x2/n2))
ssr
sse = ssct-ssr
sse
mse = sse/(n2-2)
mse

ybar.r = y2bar - beta[2]*(x2bar-x1bar)
ybar.r

s2.r = 0.89958159*mse*(0.01388889 + ((x1bar-x2bar)^2)/(71*s2.x2)) + 0.044*(s2.y2/717)
s2.r

total = N*y2bar - N*beta[2]*(x2bar-x1bar)
total

plot(phase2$x2,phase2$y2, xlab = "Estimated Volume", ylab = "Actual Volume",
     main = " Tree Length Logging Operation: \nEstimated vs. Actual Wood Volume")
abline(a = beta[1], b = beta[2])

