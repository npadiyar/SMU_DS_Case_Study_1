# Question #4
# Plot the GDP for all of the countries. Use ggplot2 to color your plot by Income Group. 

library(dplyr);

library(ggplot2);

install.packages(dplyr);

g <- ggplot(data=sort_merged_V3_X_NA_sub,aes(x=V3.x,y=GDPRanking)) + geom_point(color="firebrick");

g;


