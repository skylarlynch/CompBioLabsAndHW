# lab step 3, how many chips are needed for a party
Chips <- 5
Guests <- 8
# lab step 5
Chips / Guests
Guests = 0.4 Chips
GuestPerChip <- 0.4
# I will eat 0.4 bags of chips
MyChip <- 0.4
# How the guests ranked the movies
Self <- c(7,9,8,1,2,3,4,6,5)
Penny <- c(5,9,8,3,1,2,4,7,6)
Lenny <- c(6,5,4,9,8,7,3,2,1)
Stewie <- c(1,9,5,6,8,7,2,3,4)
# Penny and Lenny's Ranking for Episode 4
PennyIV <- Penny[4]
PennyIV
LennyIV <- Lenny[4]
# Combining all guest's ranking into a matrix
MovieRanking <- cbind(Self, Penny, Lenny, Stewie)
MovieRanking
str(Penny)
str(PennyIV)
str(MovieRanking)
# Penny shows the whole list, PennyIV shows only the value for number 4 and MovieRanking show the entire matrix
MovieDF <- as.data.frame(MovieRanking)
MovieDF2 <- data.frame(Self, Penny, Lenny, Stewie)
MovieDF
MovieDF2
str(MovieRanking)
str(MovieDF)
# The data frame is viewable with the str() function, where as the matrix is not
dim(MovieRanking)
dim(MovieDF)
# Both show the number of collums and rows
MovieRanking == MovieDF
# Yes all the values are the same
typeof(MovieRanking)
typeof(MovieDF)
# MovieRanking is a double and MovieDF is a list
Episode <- c("I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX")
help("row.names")
row.names(MovieRanking) <- Episode
MovieRanking
row.names(MovieDF) <- Episode
MovieDF
MovieRanking[3,]
MovieDF[,4]
# Self Ranking for Episode 5
MovieRanking[5,1]
# Penny's Ranking for Episode 2
MovieRanking[2,2]
MovieRanking[4:6,]
MovieRanking[c(2,5,7),]
MovieRanking[c(4,6),c(2,4)]
all MovieDF["III","Penny"]
MovieDF all("III","Penny")
MovieDF$Lenny[2]<- MovieDF$Lenny[5]
