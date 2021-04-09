# Equation: n[t] <- n[t-1] + ( r * n[t-1] * (K - n[t-1])/K )
n <- 2500 #abundance of the population at time (t)
K <- 10000 #environmental carrying capacity for the population
r <- 0.8 #intrinsic growth rate of the population
t <- 12 #time

for (i in 1:t) {
  n <- n + ( r * n * (K - n)/K )
  print(n)
}
time <- c(1,2,3,4,5,6,7,8,9,10,11,12)  
abundance <- c(n)
print(time)
print(abundance)

LogisticGrowth <- function(n = NA , K = NA , r = NA , t = NA){
  growth <- n[t-1]+( r*n[t-1]*(K-n[t-1])/K)
  
  return(growth)
}

LogisticGrowth(c(2500 , 10000 , 0.8 , 1-12))

TimeOverAbandance <- ggplot(df, aes(x = t , y = n))

save(LogisticGrowth, TimeOverAbandance, file = "Lab08Data.R")
