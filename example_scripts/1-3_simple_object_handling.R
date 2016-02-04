#### Werte Zuweisen ####

x <- 5
y <- 3

x+y

#### Vektor anlegen ####

z1 <- c(1,2,3,4,5)
z2 <- c(4,5,6,7,8)

z1+z2

#### data.frame anlegen ####

a <- c("Grube 1", "Grube 2", "Grube 3", "Grube 4", "Grube 5")
b <- c("Dechsel 1", "Axt 1", "Axt 2", "Beil 1", "Dechsel 2")
c <- c(5,3,2,5,5)

Grabung1 <- data.frame(
  Objekt = b, 
  Anzahl = c, 
  row.names = a, 
  stringsAsFactors = FALSE
)

#### Adressieren ####

a[3]
Grabung1$Anzahl
Grabung1[,2] 
Grabung1[1,]

#### Löschen/Ändern ####

a[-2]
a[c(-1,-3)]
a[c(2,4,5)]
Grabung1[c(-1,-2),]

Grabung1[3,1] <- NA
Grabung1[3,] <- c("Perle 2", 233)

#### Trennen ####

Grabung1.A <- Grabung1[c(1:2),]
Grabung1.B <- Grabung1[,1]

#### Zusammenfügen ####

c(z1,z2,13,14,57)
rbind(Grabung1, Grabung1.A)
data.frame(Grabung1, Grabung1.B)

#### Namen ändern ####

Grabung1
colnames(Grabung1)
row.names(Grabung1)

colnames(Grabung1) <- c("Fundtyp", "Menge")
Grabung1