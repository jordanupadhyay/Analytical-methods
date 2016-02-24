x = rpois(10,3.5)
x
y = rpois(10000,3.5)
y

p = ((3.5^x)*exp(-3.5))/factorial(x)
p

o = ((3.5^y)*exp(-3.5))/factorial(y)
o