# Question #3
# What are the average GDP rankings for the "High income: OECD" and "High income: nonOECD" groups? 

unique(V3.x)
[1] High income: nonOECD Low income           Lower middle income  Upper middle income  High income: OECD    Income Group         <NA>                
Levels: High income: nonOECD High income: OECD Income Group Low income Lower middle income Upper middle income

sort_merged_data_sub <- subset(x=sort_merged_data, !is.na(GDPRanking));
sort_merged_V3_X_NA_sub <- subset(x=sort_merged_data_sub, !is.na(V3.x));

# Number of records with NOT NULL values for V3.x. The answer is 189
nrow(sort_merged_V3_X_NA_sub)

with(sort_merged_V3_X_NA_sub, mean(as.numeric(as.character(GDPRanking[V3.x == "High income: OECD"]))))
[1] 32.96667

sort_merged_V3_X_NA_sub <- subset(x=sort_merged_V3_X_NA_sub, !is.na(GDPRanking));
sort_merged_V3_X_NA_sub <- subset(x=sort_merged_V3_X_NA_sub, !is.na(V3.x));
with(sort_merged_V3_X_NA_sub, mean(as.numeric(as.character(GDPRanking[V3.x == "High income: nonOECD"]))))
[1] 91.91304