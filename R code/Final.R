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

#Question 4
s21 = (11920000000 - (480000^2)/20)/19
s21
s22 = (24040000000 - (840000^2)/30)/29
s22
sst = (((110*(s21/20)*(90))/20)+((168*(s22/30)*(138))/30))*(1/(278^2))
sst 
bound = 2*sqrt(sst)
bound
#Question 5
vol5 = c(40,37,42,45,49,41,37,35,50,43)
xbar = mean(vol5)
s = sd(vol5)
xbar
s

t = -qt(0.025,9)
t

(t*s)/sqrt(10)
41.9-3.59

#Question 6
(30*28)/15
15/28
s2=(56*(1-0.5)*(1-0.536))/(0.5*0.536)
2*sqrt(s2)

#Question 8
rhinos = c(8, 1, 19, 22, 2, 12, 0, 1, 20, 19)
xbar_rhino = mean(rhinos)
s2_rhino = var(rhinos)
xbar_rhino
s2_rhino

VMR = s2_rhino/xbar_rhino
VMR
s_vmr = sqrt(2/(10-1))
s_vmr
bigt = (VMR-1)/s_vmr
bigt
qt(0.025,9)

#Question 9
s = sqrt(8.1)
2*s
#Question 10
vh = c(0.0006,0.0012,0.0019,0.0020)
h = c(1,2,3,4)
dist = h*30
plot(h,vh, main="Variogram")
