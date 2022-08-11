# MechaCar Statistical Analysis
## Overview of the Project 

* Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes.
* Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.
* Run t-tests to determine if the manufacturing lots are statistically different from the mean population.
* Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Linear Regression 
The formula we used to predict mpg
* lm(formula = mpg = vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = file_name)

## Summary on Suspension Coil
The MechaCar Suspension_Coil.csv dataset contains the results from multiple production lots. 

The following PSI metrics for each lot: mean, median, variance, and standard deviation.
In the MechaCarChallenge.RScript, we've imported and read the Suspension_Coil.csv file as a table.
Wrote a RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.

Then, we wrote a RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column for other 3 lots...

## T-testing
In our MechaCarChallenge.RScript, write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
* Conduct a t-test on the suspension coil data to determine whether there is a statistical difference between the mean of this provided sample dataset and a hypothesized, potential population dataset. Using the presumed population mean of 1500.
