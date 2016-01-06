library(ggplot2)


#### Einfacher Plot ####

ggplot(
  mtcars, aes(carb)
  ) + 
  geom_bar()


#### Variable als factor ####

ggplot(
  # carb als factor
  mtcars, aes(factor(carb))
) + 
  geom_bar()


#### facet_wrap ####

ggplot(
# carb als factor
mtcars, aes(factor(carb))
) + 
  geom_bar(
  ) +
  facet_wrap(~ am)


#### facet_grid ####

ggplot(
  # carb als factor
  mtcars, aes(factor(carb))
) + 
  geom_bar(
  ) + 
  facet_grid(gear ~ am)


#### Beschriftung mit stat_bin ####

ggplot(
  mtcars, aes(factor(carb))
) + 
  geom_bar(
  ) + 
  stat_bin(aes(label = ..count..), geom = "text", vjust = 1.5, size = 3, color = "white") +
  facet_grid(gear ~ am)
