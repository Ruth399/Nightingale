5 + 6
#barplot(x)
a <- 5
b <- 6
a + b
sum(a,b)

name <- c("Ruth", "Legesse")
#c is for concatenation, so the variable name holds the two string values
name
#updated strings in name, pressed cmd+enter for name on line 10, without first doing so in line 8, still returned original values 

flatmates <- c("Kosi", "Priya", "Maria")
#ages are not put in "", as they are numerical values
age <- c(19, 19, 20)
gender <- c("F", "F", "F")

friends <- data.frame(flatmates, age, gender)
#function, data frame contains arguments from age and gender - also, weirdllyy, values are not returned unless cmd+enter is pressed at every line
#this returns a simple table with all three observations displayed

#if one variable in specific needs to be observed, we can fix it like in excel 
friends$flatmates
#this returns all the items within that variable

#subsetting specific items from a variable
friends[1,1:3]
#before the comma is the row (observation) and after is the column, leaving it blank would return the entire table

#even more specific
friends[friends$age < 20, 1:3]
#this command specifically looks at the age observation and returns all rows for which age < 20

install.packages("tidyverse")

library(tidyverse)

friends %>% #this basically means "and then"
  select(flatmates, age) %>% #selects the observation interested in from the variable flatmates
  filter(age < 20) %>% #filters by condition specified in brackets
  arrange(age) #arranged in ascending order
  
try <- "something"
try
