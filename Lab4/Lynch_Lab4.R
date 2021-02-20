# Part 1: Practice writing for loops

# 1. Write a for loop that prints hi 10 times
for (hi in c(1,2,3,4,5)) {
  print("hi")
}
for (x in (1:5)) {
  print(x)
}

# 2. Tim's piggybank
piggybank <- 10 #dollars
allowance <- 5 #dollars
gumCost <- 2 * 1.34 #cos of 2 packs of gum per week
weeks <- 8 #relevant time frame

for ( i in 1:weeks) {
  piggybank <- piggybank + allowance - gumCost
  print(piggybank)
}

# 3. Conservation Biologist
Population <- 2000 # initial population size
PopDecrease <- 0.05 # five percent decrease every year
Years <- 7 # Relevant period of time

for (i in 1:Years) {
  Population <- Population - (Population * PopDecrease)
  print(Population)
}

# 4. Logistic Growth
# Equation: n[t] <- n[t-1] + ( r * n[t-1] * (K - n[t-1])/K )
n <- 2500 #abundance of the population at time (t)
K <- 10000 #environmental carrying capacity for the population
r <- 0.8 #intrinsic growth rate of the population
t <- 12 #time

for (i in 1:t) {
  n <- n + ( r * n * (K - n)/K )
  print(n)
}


# Part 2:

#5a.
data <- rep(0, 18)
print(data)

#5b.
for ( i in seq(1,18) ) {
  i <- i * 3
  print(i)
}

#5c.
data <- rep(0, 18) 

  print(data)

#5d.
  d <- 1
  for ( i in seq(1,18) ) {
    d <- 1 + (2 * d)
    print(d)
  }

  #6. Fibonacci Loop
  Fibonacci <- numeric(20)
  Fibonacci[1] <- Fibonacci[2] <- 1
  for (i in 3:20) Fibonacci[i] <- Fibonacci[i - 2] + Fibonacci[i - 1]
  print(Fibonacci)
  
  #7.
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

