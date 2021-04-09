# Working with some data from the Colorado Department of Public Health
# and Environment (CDPHE) on COVID-19 in Colorado.

# Change the next line to work for YOUR OWN computer:
setwd("~/compbio/CompBio_on_git/Datasets/COVID-19/CDPHE_Data/CDPHE_Data_Portal/")

stateStatsData <- read.csv("DailyStateStats2/CDPHE_COVID19_Daily_State_Statistics_2_2021-04-02.csv", 
                           stringsAsFactors = F)


####################################################
## Explore the data
####################################################
# here are some suggestions for simple exploration , but please use your own ideas!
names(stateStatsData) 
str(stateStatsData)
summary(stateStatsData)
unique(stateStatsData$Name)
unique(stateStatsData$Desc_)
table(stateStatsData$Name)



##################################################################
##  Tasks
##################################################################

# try to figure out ways to do all of the following using functions 
# from the Tidyverse

# 1. subset the data so that we only keep the rows where the text in the column (variable) named "Name" is "Colorado"
ColoradoData <- filter(stateStatsData, Name == "Colorado")
# 2. subset to keep only the columns "Date", "Cases", and "Deaths"
substateStats <-stateStatsData %>%
  select("Date", "Cases", "Deaths")
# 3. change the data in the "Date" column to be actual dates rather than a character
stateStatsData$Date <- strptime(stateStatsData$Date, format = "%m/%d/%Y", tz = "")
# 4. sort the data so that the rows are in order by date from earliest to latest
new <- substateStats %>% 
  arrange(Date)
# 5. subset the data so that we only have dates prior to May 15th, 2020
dt <- as.POSIXlt("2020-05-15")
index <- which(as.Date(stateStatsData$Date) < dt)
priorDates <- stateStatsData[index , ]

# do it all in one pipeline with pipes
ColoradoData <- stateStatsData %>%
  filter( Name == "Colorado") %>%
  select(Date, Cases, Deaths) %>%
  mutate( Date = strptime( Date, format = "%m/%d/%Y", tz = "") ) %>%
  arrange( Date ) %>%
  filter( Date < as.POSIXlt("2020-05-15") ) # dt defined above

CasePlot <- ggplot( data = ColoradoData ) + geom_point( aes(x = as.Date , y = Cases) )
CasePlot + scale_y_log10()

DeathPlot <- ggplot( data = ColoradoData ) + geom_point( aes(x = as.Date , y = Deaths) )
DeathPlot + scale_y_log10()

doublingTimeVec <- c(2,3,5,7,10)

startFrom <- 183
#183 is the number of cases at the start of the data.
# I wanted to put the number in the code below but it gave me an error so I just made start from equal 183

addDoublingTimeRefLines <- function( CassePlot, doublingTimeVec, ColoradoData, startFrom ) {
  
