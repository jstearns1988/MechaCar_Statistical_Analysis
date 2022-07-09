# MechaCar_Statistical_Analysis

AutosRUs' newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team's progress. Upper management of AutosRUs have called for the production data to be reviewed for insights that may help the manufacturing team.

Actions taken in this analysis:

  - Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
  - Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
  - Run t-tests to determine if the manufacturing lots are statistically different from the mean population
  - Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. 

## Linear Regression to Predict MPG

#### Linear model that predicts the mpg of MechaCar prototypes using several variables: vehicle length, vehicle weight, spoiler angle, ground clearance, AWD, and mpg.

![Linear Model](https://github.com/jstearns1988/MechaCar_Statistical_Analysis/blob/main/Resourses/Deliverable%201%20ss.png?raw=true)

### Summary of the Linear Regression

- The ideal variance of a non-random variable is usually 0. The intercept, vehicle_length, and ground_clearance coefficients provided a non-random amount of variance to the mpg values in the dataset. Because the intercept represents the mean value of the response variable when all of the predictor variables in the model equal zero, it is more important to note the vehicle_length and ground_clearance represent the non-random amounts of variance as applied to the mpg values.

- Due to an extremely small p-value, the slope is not equal to zero. This can be explained by the p-value of the linear model being much smaller than the significance level. Because the slope is not equal to zero, the null hypothesis is rejected as not true.

- Due to a multiple R-squared value of 0.715, or 71.5%, there is a strong correlation for the dataset that shows it is effective. The adjusted R-square value of 0.683 also supports this conclusion.


## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. The following dataframes were created to determine if the current manufacturing data meets this design specification for all manufacturing lots in total and each individually.

#### total_summary dataframe

![total_summary](https://github.com/jstearns1988/MechaCar_Statistical_Analysis/blob/main/Resourses/total_summary%20df.png?raw=true)

Overall, the variance when the data from all of the lots combined in the dataset indicates the current manufacturing data meets the 100 pounds per square inch variance limitation. This is proven by the Variance column in the dataframe showing 62.29356.

#### lot_summary dataframe

![lot_summary](https://github.com/jstearns1988/MechaCar_Statistical_Analysis/blob/main/Resourses/lot_summary%20df.png?raw=true)

However, as observed in the dataset above, Lot 3 demonstrates a much higher variance of 170.2861224. Because of the high variation in Lot 3 does not meet the design specifications.

#### To conclude the Summary Statistics on Suspension Coils portion of our analysis, Lots 1 and 2 meet the requirements, but Lot 3 does not.


## T-Tests on Suspension Coils

#### T-Test of PSI Across All Manufacturing Lots

![t_test](https://github.com/jstearns1988/MechaCar_Statistical_Analysis/blob/main/Resourses/PSI%20t-test.png?raw=true)

The data above supports a failure to reject the null hypothesis. With a significance level of 0.05 and the p-value of 0.60, the data for lots as a whole is not statistically significant from the normal distribution. Normality can be assumed. The mean falls between the 95% confidence level.

#### T-Test on Lot 1

![t_test lot 1](https://github.com/jstearns1988/MechaCar_Statistical_Analysis/blob/main/Resourses/lot1.png?raw=true)

For Lot 1, the p-value is 1, and with a significance level of 0.05 we have failed to reject the null hypothesis.

#### T-Test on Lot 2

![t_test lot 2](https://github.com/jstearns1988/MechaCar_Statistical_Analysis/blob/main/Resourses/lot2.png?raw=true)

The Lot 2 t-test also fails to reject a null hypothesis with a p-value of 0.6072.

#### T-Test on Lot 3

![t_test lot 3](https://github.com/jstearns1988/MechaCar_Statistical_Analysis/blob/main/Resourses/lot3.png?raw=true)

Lot 3 presents different results than the previous two lots. With a p-value of 0.04168, which is less than our significance level, we CAN reject the null hypothesis. It is also noted the mean is significantly smaller than Lot 1 and Lot 2.

## Study Design: MechaCar vs Competition

Living during a time of record breaking gas prices and seemingly unlimited access to ridesharing, consumers are considering many factors when evaluating a car to purchase that meets their economic means. Owning a vehicle is not the only option for conveyance anymore. To compare the performance of the MechaCar vehicles against the performance of vehicles from other manufactures, I have created a hypothetical statistical study that focuses on the economic impact owning a MechaCar or competitor vehicle will have on the consumer.

### Null Hypothesis

Consumers will not purchase a MechaCar if it is not priced fairly based on the costs to own a vehicle and continued value after the initial sale.

### Alternative Hypothesis

Consumers will purchase a MechaCar if it is not priced fairly despite the costs to own a vehicle and continued value after the initial sale.

### Metrics to Test

#### A multiple linear regression would be conducted to find which of the metrics have the highest correlation and predictability with the selling price.

  - Selling Price: Dependent Value
  - Resale Value: Independent Variable
  - Engine Type (Gasoline, Hybrid, Electric): Independent Value
  - Maintenance Costs: Independent Value
  - Fuel Efficiency: Dependent Value (when used MPG, AWD, and vehicle weight data already tested)
  
### Data Needed

Data needed to determine a resale value could be pulled from resources like Kelly Blue Book, but resale values can vary from this set price based on condition, location, and popularity of used vehicles at the time. For example: since 2020, used cars are in high demand and are selling for a lot more than they were in previous years.

There are many data sources I could pull from to determine maintenance costs. I would need an average miles driven in a given time, which parts of the car need maintenance more based on how often they are driven, and fees at auto shops based on locations.

Fuel efficiency is dependent on other values already tested: MPG, AWD, and vehicle weight. We are also analyzing engine type in this hypothetical study. How do gasoline and hybrid engines' fuel efficiency compare with the MechaCar and other makes of vehicles?

The above is just a sample of a study that can be done to quantify how the MechaCar performs against the competition. This study can be quite expansive with many other possibilities! 
  
 

  
