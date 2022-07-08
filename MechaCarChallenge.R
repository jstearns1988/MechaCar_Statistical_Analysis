library(dplyr)

# DELIVERABLE 1
# Import and read the MechaCar_mpg.csv file as a dataframe
mecha_car_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Perform linear regression using the lm() function. Pass in all six variables and add the mecha_car_mpg
# dataframe as the data parameter
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_car_mpg)

# Using the summary() function, determine the p-value and the r-squared value for the linear 
# regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_car_mpg))