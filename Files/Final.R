#Question 1
volume = c(3.23,3.47,1.86,2.47,3.01,3.22,2.88,1.71,2.89,3.77,
            4.83,4.37,4.87,3.87,3.71)
center = c(1,1,1,1,1,2,2,2,2,2,3,3,3,3,3)

table = data.frame(volume,center)

vol.aov= aov(table$volume ~ table$center)
summary(vol.aov)

#Question 3
ba = c(0.3,0.5,0.4,0.9,0.7,0.2,0.6,0.5,0.8,0.4,0.8,0.6)
vol = c(6,9,7,19,15,5,12,9,20,9,18,13)


plot(ba,vol)
abline(lm(vol~ba), col="red")


sumy = sum(vol)
sumx = sum(ba)
sumy2 = sum(vol*vol)
sumx2 = sum(ba*ba)
sumxy = sum(ba*vol)
n = length(vol)

sums = data.frame(sumy,sumx,sumy2,sumx2,sumxy)
sums

regress <-data.frame(vol, ba)



simpreg <- lm(vol ~ ba, data=regress)

print(simpreg)
anova(simpreg)
simpreg_sum <- summary(simpreg)
simpreg_sum


beta <- simpreg_sum$coef
beta


ssct = sumy2 - (sumy*sumy/n)
ssr = beta[2] * (sumxy-(sumx*sumy/n))
sse = ssct-ssr
mse = sse/(n-2)
mse
rsq = ssr/ssct
sum_squares = data.frame(ssct,ssr,sse,mse,rsq) 
sum_squares

sb1_sq = mse/(sumx2-(sumx*sumx/n))
sb1_sq
sb1 = sqrt(sb1_sq)
sb1



r <- resid(simpreg)
r



yhat <- fitted(simpreg)
yhat



plot(ba,vol)
abline(simpreg, col="red")