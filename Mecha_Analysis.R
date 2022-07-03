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
