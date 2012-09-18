## Load the biofam data set that comes with the TraMineR library
library (TraMineR)
data(biofam)

## Print the variable names
names(biofam)

## Create an age variable by subtracting the birth year from the year of the survey and add it to the biofam data frame
biofam$age <- 2002-biofam$birthyr

## What is the minimum, maximum, median and mean age in the sample?
summary(biofam$age)
## Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
## 45.00   51.00   58.00   59.47   67.00   93.00 

## What is the minimum, maximum, median and mean age of the women?
## I don't now how to filter on women only, I searched on Internet but failed to find an answer. Could you please show us how to do that?

## Add a cohort factor to the biofam data frame grouping the birth years into the following categories: 1900-1929, 1930-1939, 1940-1949, 1950-1959.
biofam$cohortfactor <- cut(biofam$birthyr, c(1900,1930,1940,1950,1959),labels=c("1900-1929", "1930-1939", "1940-1949", "1950-1959"))
table(biofam$cohortfactor)

## Generate an histogram of the distribution of birthyear using the above birth year classes. (Look at the help of the hist function for how to do that.)
##  hist(biofam$cohortfactor,freq=TRUE) Does not work, I do not know how to do it.

## Produce a frequency table of the cohort factor.
table(biofam$cohortfactor)

## I do not know how to do questions 9,10 and 11. Could you please give an answer during the cclass?