# DELIVERABLE 1 - Linear Regression to Predict MPG

## Load Tidyverse/dplyr package
library(tidyverse)

## Import and read CSV 
mpg_data <- read.csv('MechaCar_mpg.csv', stringsAsFactors = F, check.names = F)

## Execute Linear Regression using lm() function - pass all 6 variables 
mpg_lreg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = mpg_data)

## Use summary() to get the p-value and r-squared of linreg 
summary(mpg_lreg)

