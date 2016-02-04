# R Update
install.packages("installr")
library(installr)

# updateR()

# Installation von ein paar wichtigen Paketen
install.packages("BB")
install.packages("ca")
install.packages("devtools")
install.packages("dplyr")
install.packages("ggplot2")
install.packages("magrittr")
install.packages("markdown")
install.packages("knitr")
install.packages("igraph")
install.packages("packrat")
install.packages("raster")
install.packages("rmarkdown")
install.packages("spatial")
install.packages("spatstat")
install.packages("tidyr")
install.packages("vegan")

# Testplot
library(ggplot2)

mtcars -> test
test$cyl <- as.factor(test$cyl)
test$gear <- as.factor(test$gear)

ggplot(test, aes(x = cyl, fill = gear)) +
  geom_bar()