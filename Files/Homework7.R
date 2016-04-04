# MULTIPLE REGRESSION
h = c(124,137,78,84,54,50,35,32,30,28,21,24,22,23,18,20)
d = c(0,0,5,5,10,10,15,15,20,20,25,25,30,30,35,35)
w = d^2
v = d^3

SSE <- function(input.lm) {return(sum(resid(input.lm)^2))}
#model 1
full = lm(h ~ d)
summary(full)
full_sum = summary(full)
anova(full)
red = lm(h ~ d)
summary(red)
anova(red)
print(Ftest(full,red))

beta <- full_sum$coef
beta

r <- resid(full)
r

yhat <- fitted(full)
yhat

SSE <- sum(r^2)
SSE

rootmse <- full_sum$sig
rootmse

x = seq(min(d),max(d),0.001)   
xbar = mean(d)
xbar
ssx = sum((d-xbar)^2)
ssx
mse = rootmse^2
mse
n = length(d)
n

sumry = data.frame(n,xbar,ssx,SSE,mse,rootmse)
sumry

SSE <- function(input.lm) {return(sum(resid(input.lm)^2))}
#model 2
full2 = lm(h ~ d + w)
summary(full2)
full2_sum = summary(full2)
anova(full2)
red = lm(h ~ w)
summary(red)
anova(red)
print(Ftest(full2,red))

beta <- full2_sum$coef
beta

r <- resid(full2)
r

yhat <- fitted(full2)
yhat

SSE <- sum(r^2)
SSE

rootmse <- full2_sum$sig
rootmse

x = seq(min(d),max(d),0.001)   
xbar = mean(d)
xbar
ssx = sum((d-xbar)^2)
ssx
mse = rootmse^2
mse
n = length(d)
n

sumry = data.frame(n,xbar,ssx,SSE,mse,rootmse)
sumry

SSE <- function(input.lm) {return(sum(resid(input.lm)^2))}
#model 3
full3 = lm(h ~ d + w + v)
summary(full3)
full3_sum = summary(full3)
anova(full3)
red = lm(h ~ v)
summary(red)
anova(red)
print(Ftest(full3,red))

beta <- full3_sum$coef
beta

r <- resid(full3)
r

yhat <- fitted(full3)
yhat

SSE <- sum(r^2)
SSE

rootmse <- full3_sum$sig
rootmse

x = seq(min(d),max(d),0.001)   
xbar = mean(d)
xbar
ssx = sum((d-xbar)^2)
ssx
mse = rootmse^2
mse
n = length(d)
n

sumry = data.frame(n,xbar,ssx,SSE,mse,rootmse)
sumry


#STRATIFIED RANDOM SAMPLING
strat1 = c(97, 67, 42, 125, 25, 92, 105, 86, 27, 43, 45, 59, 53, 21)
N1 = 80
n1 = 14
mean1 = mean(strat1)
var1 = var(strat1)
mean1
var1

strat2 = c(155, 67, 96, 256, 47, 310, 236, 220, 352, 142, 190)
N2 = 70
n2 = 12
mean2 = mean(strat2)
var2 = var(strat2)
mean2
var2

strat3 = c(142, 256, 310, 440, 495, 510, 320, 396, 196)
N3 = 50
n3 =9
mean3 = mean(strat3)
var3 = var(strat3)
mean3
var3

strat4 = c(167,655,220,540,780)
N4 = 30
n4 = 5
mean4 = mean(strat4)
var4 = var(strat4)
mean4
var4

y_bar = ((N1*mean1)+(N2*mean2)+(N3*mean3)+(N4*mean4))/230
var_st = (1/230^2)*(((N1*(N1-n1)*var1)/n1)+((N2*(N2-n2)*var2)/n2)+
                  ((N3*(N3-n3)*var3)/n3)+((N1*(N4-n4)*var4)/n4))
y_bar
var_st

s= sqrt(var_st)
s
ci = 2*s
ci

t = 230*y_bar
s2_t = (230^2)*var_st
s_t = sqrt(s2_t)
ci_t = 2*s_t

t
s2_t
ci_t