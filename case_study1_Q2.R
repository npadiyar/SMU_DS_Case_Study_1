# Question #2
# Sort the data frame in ascending order by GDP (so United States is last). What is the 13th country in the resulting data frame? 

# Set the Column Name for the Merged Data as GDPRanking
colnames(merged_data)[32] <- 'GDPRanking';

# This is to make sure that we are removing NULL values before sorting
gdpranking_data_sub <- subset(x=merged_data, !is.na(GDPRanking));

# Check the number of records after removing NULL values. It is 190.
nrow(gdpranking_data_sub)

# Use the attach command before using the Order function on GDPRanking
attach(gdpranking_data_sub)

# This command sorts the data using the column GDPRanking by ascending order
sort_merged_data <- merged_data[order(as.numeric(as.character(GDPRanking))),];

# This command sorts the data using the column GDPRanking in descending order
sort_merged_data <- merged_data[order(-as.numeric(as.character(GDPRanking))),];

# You can look at the data using the edit command
edit(sort_merged_data);

# The 13th Country from the top after sorting the data in St. Kitts and Nevis.
# Actually Since St. Kitts and Newis and Grenada are both tied at 178 in the GDP Ranking.