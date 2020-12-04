#1 PREDICT MPG

library(tidyverse)
library(dplyr)
df <- read.csv('MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
head(df)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = df)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = df))

#2 VISUALIZATION TRIP ANALYSIS
table_sc <- read.csv('Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
head(table_sc)
total_summary <- table_sc %>% summarise(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
lot_summary <- table_sc %>% group_by(Manufacturing_Lot) %>% summarise(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep')
                                                                      