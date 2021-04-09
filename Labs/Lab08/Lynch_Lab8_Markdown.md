This code is to run a logistic growth calculation for population ecology, and to create a plot of said data.

Equation: n[t] <- n[t-1] + ( r * n[t-1] * (K - n[t-1])/K )

For this propblem, the numbers are as follows:
n <- 2500 #abundance of the population at time (t)
K <- 10000 #environmental carrying capacity for the population
r <- 0.8 #intrinsic growth rate of the population
t <- 12 #time
