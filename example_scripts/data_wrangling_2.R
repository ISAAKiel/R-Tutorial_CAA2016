#### Daten laden ####

atlant <- read.csv("data/AtlantData1.csv", sep = "\t", header = TRUE)


#### Kreuztabelle mit Auszählen ####

table(atlant$site, atlant$size)

# dito mit tapply
a <- tapply(atlant$qty, list(atlant$site, atlant$size), length)
a[is.na(a)] <- 0
a


#### Berechnungen in Abhängikeit zu einer Variable ####

tapply(atlant$wt, list(atlant$site), sum)

data.frame(tapply(atlant$wt, list(atlant$site), sum))

data.frame(tapply(atlant$wt, list(atlant$site), function(x){sum(x)/1000}))


#### Berechnungen in Abhängikeit zu zwei Variablen ####

b <- data.frame(tapply(atlant$wt, list(atlant$site, atlant$size), sum), check.names = FALSE)
b[is.na(b)] <- 0
b


#### Auszählen in Abhängikeit zu drei Variablen ####

library(reshape2)

dcast(atlant, site + feature ~ size)


#### Berechnungen in Abhängikeit zu drei Variablen ####

dcast(atlant, site + feature ~ size, value.var = "wt", fun.aggregate = sum)


#### Melt ####
# Eingabeformat für ggplot2()!!!

library(reshape2)

atlant_sites.size <- melt(a)

colnames(atlant_sites.size) <- c('site', 'size', 'qty')

write.table(atlant_sites.size, "data/AtlantPottey_Sites-Sizes.csv", sep = '\t')


#### Filter und Subseting nach site 'F' ####

atlant_sub <- subset(atlant, site == 'F')


#### Filter mit mehrere Bedingungen ####

library(dplyr)

atlant_filter <- filter(atlant, site == 'F' & wall > 5)
