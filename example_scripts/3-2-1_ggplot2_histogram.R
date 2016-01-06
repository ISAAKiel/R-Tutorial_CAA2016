library(ggplot2)


#### Einfacher Plot ####

ggplot(
  mtcars,
  aes(mpg)
  ) +
  # Plottyp: Histogramm
  geom_histogram()


#### Kategoriebreite oder Kategoriemenge anpassen ####

ggplot(
  mtcars,
  aes(mpg)
  ) +
  geom_histogram(
    # Kategorienbreite
    #binwidth = 5
    # Kategoriemenge
    bins = 10
  )


#### Bildausschnitt anpassen ####

ggplot(
  mtcars,
  aes(mpg)
  ) +
  geom_histogram(
    bins = 10
  ) +
  # Bildausschnitt auf der X-Achse
  xlim(10,35)


#### Gefülltes Balkendiagramm ####

as.factor(mtcars$cyl) -> g

ggplot(
  mtcars,
  # Füllungsvariable nennen
  aes(mpg, fill = g)
  ) +
  geom_histogram(
    bins = 10
  ) +
  xlim(10,35)


#### Alternative Ansicht ####

ggplot(
  mtcars,
  aes(mpg, fill = g)
  ) +
  geom_histogram(
    bins = 10
  ) +
  xlim(10,35) +
  # Farbschema schwarz-weiß
  theme_bw()


#### Achsenbeschriftung ####

ggplot(
  mtcars,
  aes(mpg, fill = g)
  ) +
  geom_histogram(
    bins = 10
  ) +
  xlim(10,35) +
  theme_bw() +
  # Beschriftung einführen
  xlab("Beschriftung X-Achse") +
  ylab("Beschriftung Y-Achse")


#### Füllfarben ändern ####

ggplot(
  mtcars,
  aes(mpg, fill = g)
  ) +
  geom_histogram(
    bins = 10
  ) +
  xlim(10,35) +
  theme_bw() +
  xlab("Beschriftung X-Achse") +
  ylab("Beschriftung Y-Achse") +
  # Andere Farbsets
  #scale_fill_brewer("Set2")
  # Manuelle Farbwahl 
  scale_fill_manual(
    values = c(
      "4" = "red",
      "6" = "blue",
      "8" = "green"
    )
  )


#### Titel und Position der Legende ####

ggplot(
  mtcars,
  aes(mpg, fill = g)
  ) +
  geom_histogram(
    bins = 10
  ) +
  xlim(10,35) +
  theme_bw() +
  xlab("Beschriftung X-Achse") +
  ylab("Beschriftung Y-Achse") +
  scale_fill_manual(
    values = c(
      "4" = "red",
      "6" = "blue",
      "8" = "green"
    ), 
    # Titel der Legende
    name = "Legende"
  ) +
  # Position der Legende
  theme(
    legend.position = c(1,1),
    legend.justification = c(1,1)
  )
