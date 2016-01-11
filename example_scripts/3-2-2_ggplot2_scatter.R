library(ggplot2)


#### Einfacher Plot ####

ggplot(
  mtcars, 
  aes(x = mpg, y = hp)
  ) + 
  geom_point()


#### Logithmische Y-Achse ####

ggplot(
  mtcars, 
  aes(x = mpg, y = hp)
) + 
  geom_point(
  ) +
  coord_trans(y="log2")


#### Symbolgröße #####

ggplot(
  mtcars, 
  aes(x = mpg, y = hp)
  ) + 
  geom_point(
    # size manuell angeben
    size = 4
  ) + 
  coord_trans(y="log2")


#### Symbolgröße abhängig von Variable ####

ggplot(
  mtcars, 
  # size in aes() in Abhängigkeit zu Variable
  aes(x = mpg, y = hp, size = disp)
  ) + 
  geom_point(
  ) + 
  coord_trans(y="log2")


#### Grenzen für Symbolgröße ####

ggplot(
  mtcars, 
  # size in aes() in Abhängigkeit zu Variable
  aes(x = mpg, y = hp, size = disp)
  ) + 
  geom_point(
  ) + 
  coord_trans(y="log2"
  ) + 
  # manuelle Festlegung der Symbolgrößen
  # scale_size_continuous(range = c(1,10))
  # range jetzt von 3 bis 10
  scale_size_continuous(range = c(3,10))


#### Füllfarbe ####
# Farbige Markierung von Zylinderanzahl als Füllfarbe

ggplot(
  mtcars, 
  # color gibt Farbe der Symbole an
  aes(x = mpg, y = hp, size = disp, color = cyl)
  ) + 
  geom_point(
  ) + 
  coord_trans(y="log2"
  ) +
  scale_size_continuous(range = c(3,10))


# Füllung zu gradient hier falsch

# Zylinderanzahl zum Faktor machen
as.factor(mtcars$cyl) -> g

ggplot(
  mtcars, 
  # neue Variable als Farbe
  aes(x = mpg, y = hp, size = disp, color = g)
  ) + 
  geom_point(
  ) + 
  coord_trans(y="log2"
  ) + 
  scale_size_continuous(range = c(3,10))


#### Symboltypen ####

ggplot(
  mtcars, 
  # Variable auch für Form verwenden
  aes(x = mpg, y = hp, size = disp, color = g, shape = g)
  ) + 
  geom_point(
  ) + 
  coord_trans(y="log2"
  ) + 
  scale_size_continuous(range = c(3,10))


# Form und Farbe getrennten Variablen zuweisen

ggplot(
  mtcars, 
  # Variable auch für Form verwenden
  aes(x = mpg, y = hp, size = disp, color = wt, shape = g)
  ) + 
  geom_point(
  )  + 
  coord_trans(y="log2"
  ) +
  scale_size_continuous(range = c(3,10))


#### Eigene Farbskala ####

ggplot(
  mtcars, 
  aes(x = mpg, y = hp, size = disp, color = wt, shape = g)
  ) + 
  geom_point(
  ) + 
  coord_trans(y="log2"
  ) + 
  scale_size_continuous(range = c(3,10)) +
  # eigene Skala
  scale_color_gradient(low = "green", high = "red")



ggplot(
  mtcars, 
  aes(x = mpg, y = hp, size = disp, color = wt, shape = g)
  ) + 
  geom_point(
  ) + 
  coord_trans(y="log2"
  ) + 
  scale_size_continuous(
    range = c(3,10)
  ) +
  # eigene Skala
  scale_color_gradient(
    low = "green", 
    high = "red"
  ) + 
  # Symbole mit möglicher Füllung ab Nr. 21
    scale_shape_manual(
    values = 21:(21+length(unique(g)))
  )


# aber da Farbe bislang mit color definiert werden die Symbole nicht ausgefüllt

ggplot(
  mtcars, 
  # fill anstatt color
  aes(x = mpg, y = hp, size = disp, fill = wt, shape = g)
  ) + 
  geom_point(
  ) + 
  coord_trans(y="log2"
  ) + 
  scale_size_continuous(
    range = c(3,10)
  ) +
  # ACHTUNG: in scale_fill_gradient() ändern!!!
  scale_fill_gradient(
    low = "green", 
    high = "red"
  ) + 
  scale_shape_manual(
    values = 21:(21+length(unique(g)))
  )


#### Facet ####
# nach Automatik oder Schalter -> mtcars$am

ggplot(
  mtcars, 
  aes(x = mpg, y = hp, size = disp, fill = wt, shape = g)
) + 
  geom_point(
  ) + 
  coord_trans(y="log2"
  ) + 
  scale_size_continuous(
    range = c(3,10)
  ) +
  # ACHTUNG: in scale_fill_gradient() ändern!!!
  scale_fill_gradient(
    low = "green", 
    high = "red"
  ) + 
  # Symbole mit möglicher Füllung ab Nr. 21
  scale_shape_manual(
    values = 21:(21+length(unique(g)))
  ) + 
  facet_wrap(~ am)


#### Letzter Zustand ####
mtcars2 <- mtcars

mtcars2$am[mtcars2$am == 1] <- "Manuell"
mtcars2$am[mtcars2$am == 0] <- "Automatik"

ggplot(
  mtcars2, 
  aes(x = mpg, y = hp, size = disp, fill = wt, shape = g)
) + 
  geom_point(
  ) + 
  coord_trans(y="log2"
  ) + 
  scale_size_continuous(
    range = c(3,10),
    name = "Hubraum"
  ) +
  # ACHTUNG: in scale_fill_gradient() ändern!!!
  scale_fill_gradient(
    low = "green", 
    high = "red",
    name = "Gewicht"
  ) + 
  # Symbole mit möglicher Füllung ab Nr. 21
  scale_shape_manual(
    values = 21:(21+length(unique(g))),
    name = "Zylinder"
  ) + 
  facet_grid(. ~ am)
