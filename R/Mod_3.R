library(ggplot2)

# Values
Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")
ABC_poll   <- c(  4,      62,      51,    21,      2,        14,       15)
CBS_poll   <- c( 12,      75,      43,    19,      1,        21,       19)

# Combine into Dataframe
df_polls <- data.frame(Name, ABC_poll, CBS_poll)

# Inspecting Data
str(df_polls)
head(df_polls)

# Mean/Median/Range of polls
# Mean
mean(df_polls$ABC_poll)
mean(df_polls$CBS_poll)

# Median
median(df_polls$CBS_poll)
median(df_polls$ABC_poll)

# Range
range(df_polls[, c("ABC_poll","CBS_poll")])

# Difference between CBS and ABC polls
df_polls$Diff <- df_polls$CBS_poll - df_polls$ABC_poll
print(df_polls)

# bar chart
ggplot(df_polls, aes(x = Name,y = Diff)) +
geom_col()
