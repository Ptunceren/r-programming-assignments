install.packages("openintro")

data("cars93", package = "openintro")
head(cars93)

# Scatter plot
plot(cars93$price, cars93$mph_city,
     main   = "Base: price vs. mpg_city",
     xlab   = "price",
     ylab   = "mpg_city")

names(cars93)

# Histogram
hist(cars93$weight,
     main   = "Base: weight",
     xlab   = "weight")

library(lattice)

# Conditional scatter plot (small multiples)
xyplot(mpg_city ~ price | type,
       data = cars93,
       main = "Lattice: mpg_city vs. price by group")

# Box-and-whisker plot
bwplot(weight ~ type,
       data = cars93,
       main = "Lattice: weight by category")

library(ggplot2)

# Scatter plot with smoothing
ggplot(cars93, aes(x = price, y = mpg_city, color = type)) +
  geom_point() +
  geom_smooth(method = "lm") +
  labs(title = "ggplot2: mpg_city vs. price with trend by group")

# Faceted histogram
ggplot(cars93, aes(weight)) +
  geom_histogram(binwidth = 1) +
  facet_wrap(~ type) +
  labs(title = "ggplot2: weight distribution by category")