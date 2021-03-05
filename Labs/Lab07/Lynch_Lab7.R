#Problem 1

triangleArea <- function(base = NA , height = NA) {
  area <- 0.5 * base * height
  
  return(area)
}

triangleArea(10 , 9)

# Problem 2

myAbs <- function(value = NA) {
 
 if (value > 0) {
    return (value)
  } else  {
    valueNew <- value * -1
    return (valueNew)
  }}

myAbs(5) 
myAbs(-2.3)  

vecAbs <- function(x = NA) {
  x <- x[which(x >= 0)]
  return(x)
} 

vecAbs(c(1.1, 2, 0, -4.3, 9, -12))

# Problem 3

FibonacciSeq <- function(leingth = NA , startingPoinnt = NA) {
  Fibonacci <- numeric(20)
  Fibonacci[1] <- Fibonacci[2] <- 1
  for (i in 3:20) Fibonacci[i] <- Fibonacci[i - 2] + Fibonacci[i - 1]
  return(Fibonacci)
}
FibonacciSeq(6 , 3)

# Part 4
#4a
sqrDiff <- function(x = NA , y = NA){
  answer <- (x - y) ^ 2
  return(answer)
}
sqrDiff(3,5)
sqrDiff(c(2, 4, 6) , 4)

#4b
myMean <- function(x = NA){
  answer <- sum(x) / length(x)
  return(answer)
}
myMean(c(5, 15, 10))
myMean(DataForLab07)
#4c

sumSquare <- function(x = NA){
  squares <- (x - mean(x)) ^ 2
  result <- sum(squares)
  return(result)
}
sumSquare(c(5, 15, 10)
)
sumSquare(DataForLab07)`
