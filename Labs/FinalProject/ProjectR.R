#Input your minimum threshold here:
myThreshold <- 30

#This will sort your data. Please change name to headers of your document as needed
TalliedSpecies <- herbSort %>% group_by( ScientificName, year, ID ) %>% tally ()
#This should filter out only the results that are greater than or equal to your criteria.
UsableSpecies <- filter_if(ScientificName, Name >= myThreshold)

return(UsableSpecies)

