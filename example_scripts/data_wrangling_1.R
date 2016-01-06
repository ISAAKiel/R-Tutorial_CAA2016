#### Daten laden ####

atlantpot <- read.csv("data/AtlantPottery.csv", sep = "\t", header = TRUE)
atlantgis <- read.csv("data/AtlantGIS_sites.csv", sep = ",", header = TRUE)


### Daten anschauen ###

head(atlantpot)
View(atlantgis)


#### Daten auswählen und projizieren ####

colnames(atlantgis)

atlantgis_red <- atlantgis[,c(1,2,4,5)]

atlantgis_red$site %in% atlantpot$site

atlant <- merge(atlantgis_red, atlantpot, by = "site")


#### Factors ####

atlant$wt
class(atlant$wt)

atlant$site
class(atlant$site)

atlant$size
class(atlant$size)
as.factor(atlant$size)
atlant$size <- as.factor(atlant$size)
atlant$size

atlant$temperSize
#class(atlant$temperSize)
#levels(atlant$temperSize) <- c("", "VF", "F", "M", "C", "VC")
#atlant$temperSize


#### Duplikate entfernen ####

sample_vec <- sample(1:nrow(atlant), 20)

atlant[sample_vec,c(1,4)]

unique(atlant[,c(1,4)])

# duplicated(atlant[,c(1,4)])
# dupl <- duplicated(atlant[,c(1,4)])
# atlant[!dupl,c(1,4)]


#### Sortieren ####
head(atlant)

sort(atlant$vesselShape)

atlant[sort(atlant$vesselShape, atlant$wt),] 

order(atlant$vesselShape)

atlant[order(atlant$vesselShape),]

atlant_ordered <- atlant[order(atlant$vesselShape, atlant$wt),] 

atlant_ordered <- atlant[order(atlant$wt, decreasing = TRUE),] 


#### Grouping ####

aggregate(atlant$wt, by = list(atlant$site), sum)

aggregate(wt ~ site, atlant , sum)

aggregate(muendungsD ~ vesselShape, atlant , mean)

library(dplyr) 
summarise(group_by(atlant, site), Gewicht_Summe = sum(wt)) -> test

library(magrittr)
atlant %>% group_by(site) %>% summarise(Gewicht_Summe = sum(wt), Gewicht_Mittelwert = mean(wt)) -> test

u <- function(x){y <- mean(x); z <- sum(x); return(c(z,y))}
aggregate(wt ~ site, atlant , u)