par(mfrow=c(3,2))

x1 = rbinom(10, 10, 0.5)
x2 = rbinom(1000, 10, 0.5)

hist(x1, main="10 simulations, n = 10, p = 0.5")
hist(x2, main="1000 simulations, n = 10, p = 0.5")

y1 = rbinom(10, 1000, 0.5)
y2 = rbinom(1000, 1000, 0.5)

hist(y1, main="10 simulations, n = 1000, p = 0.5")
hist(y2, main="1000 simulations, n = 1000, p = 0.5")

z1 = rbinom(10, 1000, 0.2)
z2 = rbinom(1000, 1000, 0.2)

hist(z1, main="10 simulations, n = 1000, p = 0.2")
hist(z2, main="1000 simulations, n = 1000, p = 0.2")

