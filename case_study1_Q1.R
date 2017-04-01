# Question #1

library(dplyr);

setwd("C:/Users/Nagesh Padiyar/SMU Datascience/Homework Assignments/Case Study 1");
getwd();
country_data <- read.csv("getdata_Fdata_FEDSTATS_Country.csv", header = FALSE, sep = ",", na.strings = c("","NA"));
colnames(country_data)[1] <- 'CountryCode';
country_data_sub <- subset(x=country_data, !is.na(CountryCode));

head(country_data_sub);
summary(country_data_sub);
str(country_data_sub);
names(country_data_sub);

gdp_data <- read.csv("getdata_Fdata_FGDP.csv", header = FALSE, sep = ",", na.strings = c("","NA"));
nrow(gdp_data);

colnames(gdp_data)[1] <- 'CountryCode';
gdp_data_sub <- subset(x=gdp_data, !is.na(CountryCode));

names(gdp_data_sub);
head(gdp_data_sub);
summary(gdp_data_sub);

merged_data = merge(country_data_sub, gdp_data_sub, by.x="CountryCode", by.y="CountryCode", all=TRUE);

head(merged_data);
summary(merged_data);
names(merged_data);

str(merged_data);

edit(merged_data);





