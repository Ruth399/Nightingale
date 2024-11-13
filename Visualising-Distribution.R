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
  
library(tidyverse)

install.packages("palmerpenguins")
library(palmerpenguins)

#conflicts with tidyverse package means that when calling filter() and lag() R wil use the dplyr version by default, not stats
#if you want to specifically call filter and lag functions from stats package, use stats::filter() or stats::lag()

install.packages("ggthemes")

#data frame > 2D table where columns are variables and rows are observations 

package_info <- installed.packages()["palmerpenguins",]
package_info["LibPath"]

#to find a specific package / the default location where packages are stored - user terminal cd and open to access library
#use cmd+enter to find more about a specific function in terminal

.libPaths()

#a value is the state of a variable; observation is a set of measurements made under similar conditions - contain several values, each associated with a different variable
#tabular data - set of values, each of which is associated with a variable (column) and observation (row)

penguins
#glimpse(penguins) <- allows preview of table that would otherwise be too big to view
View(penguins)
#R is case sensitive, there is no view function, but there is a View function

?penguins
#finds information about the package - see in help window

#creating visualization displaying relationship between flipper lengths and body masses of penguins

library(tidyverse) 
library(palmerpenguins)
palmerpenguins::penguins

ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species),
  ) +
  geom_point() + 
  geom_smooth(method = "lm") 

  
#mapping argument of ggplot defines how variables in a dataset are mapped to visual properties (aesthetics) of the plot. 
#the aes function defines the mapping argument, and the x and y arguments of the aes function establish the axes
#note - arguments in R have a argument = syntax, functions have function() syntax
#geom defines which object is used on the plot to represent data - to access use geom_e.g., boxplot, line, bar()
#scatter plot is not complete at this point (line 84); however, question of relation between flipper length and body mass is answered
#when a categorical variable is mapped, ggplot2 automatically assigns a unique value of the visual property (color) to each unique level of the variable (species) this is known as SCALING
#lm = linear model

 




