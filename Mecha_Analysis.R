# DELIVERABLE 1 - Linear Regression to Predict MPG

## Load Tidyverse/dplyr package
library(tidyverse)

## Import and read CSV 
mpg_data <- read.csv('MechaCar_mpg.csv', stringsAsFactors = F, check.names = F)

## Execute Linear Regression using lm() function - pass all 6 variables 
mpg_lreg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = mpg_data)

## Use summary() to get the p-value and r-squared of linreg 
summary(mpg_lreg)

# DELIVERABLE 2 - Visualizations for Trip Analysis

## Import and read csv 
sus_data <- read.csv('Suspension_Coil.csv', stringsAsFactors = F, check.names = F)

## Generate total_summary dataframe using summarize()
  ### get mean, median, variance, st dev of suspension PSI columns
total_summary <- sus_data %>% 
  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

## Check results
total_summary

## Generate lot_summary df using summarize and group_by
lot_summary <- sus_data %>% group_by(Manufacturing_Lot) %>% 
  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep')

# DELIVERABLE 3 - T-Tests on Suspension Coils

## Utilize t.test() to determine if PSI across manufacturing lots is statistically different from the population mean
t.test(sus_data$PSI, mu = 1500)

## Lot 1 T-Test
t.test(subset(sus_data, Manufacturing_Lot == 'Lot1')$PSI, mu = 1500)

## Lot 2 T-Test
t.test(subset(sus_data, Manufacturing_Lot == 'Lot2')$PSI, mu = 1500)

## Lot 3 T-Test
t.test(subset(sus_data, Manufacturing_Lot == 'Lot3')$PSI, mu = 1500)
