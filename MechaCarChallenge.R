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

# DELIVERABLE 2
# Import and read in the Suspension_Coil.csv file as a table
suspension_coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean,
# median, variance, and standard deviation of the suspension coil's PSI column
total_summary <- suspension_coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

# Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions 
# to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')