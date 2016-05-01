#Question 4
h = c(11,5,7,16,6,8,11,12,6,12,16,15,9,14,9)
data = data.frame(h)
data
k = 15
s_vmr = sqrt(2/14) #[1] 0.3779645
s2 = var(h)        #[1] 13.69524
xbar = mean(h)     #[1] 10.46667

VMR = s_vmr/xbar   #[1] 1.308462

t = (VMR-1)/s_vmr  #[1] -2.55021
qt(0.975,14)

#Question 5