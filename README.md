# Analyse und Visualisierung archäologischer Daten mit R

**Unterlagen und Skripte zum R-Turorial beim [7. Workshop der AG CAA in Hamburg (6.-7.2.2016)](http://ag-caa.de/workshop2016/)**

*Dirk Seidensticker M.A. (Universität zu Köln) und Clemens Schmid B.A. (CAU Kiel)*

Ziel des Tutorials ist es, eine Einführung in R, die Softwareumgebung und Programmiersprache für statistisches Rechnen und Grafiken, zu geben. Dabei sollen besonders die Anwendungsmöglichkeiten in der archäologischen Forschung aufgezeigt werden. Neben einer grundlegenden Einführung in die Nutzung und Arbeit mit und in R wollen wir anhand forschungsnaher Beispieldaten die Anwendung deskriptiver und weiterführender statistischer Verfahren üben und Techniken erarbeiten, Ergebnisse publikationsreif graphisch aufzubereiten.

R bietet neben einer Vielzahl von vorgefertigten, frei verfügbaren Paketen, die Funktionen für nahezu jedes statistische Analyseverfahren liefern, den unschätzbaren Vorteil einer maximalen Reproduzierbarkeit aller anfallenden Arbeitsschritte. In R implementierte Methoden lassen sich im Kontext der kompletten Bandbreite archäologischer Forschung anwenden, angefangen bei individuellen Qualifikationsarbeiten und Forschungsaktivitäten bis zu Forschungsprojekten oder Projektverbünden. Ein großes Hemmnis für die Nutzung von R ist die durchaus hohe Einstiegsschwelle, die sich durch die Arbeit in einer Programmierumgebung einerseits und die spezielle Syntax von R andererseits ergibt. Mit unserem Tutorial wollen wir einen Beitrag leisten, diese Einstiegsschwelle für Archäologen in Forschung und Lehre zu reduzieren.

Das Tutorial erfolgt mit den Notebooks der Teilnehmenden. Wir haben die Erfahrung gemacht, dass ein maximaler Lernerfolg erzielt wird, wenn die Teilnehmer nicht auf einem fremde System in einem Computer-Pool sondern mit ihren eigenen Geräten das Tutorial bewältigen. Für das Tutorial muss die [Basisversion von R](https://www.r-project.org/) installiert sein (Links siehe weiter unten). Als Entwicklungsumgebung werden wir [RStudio](https://www.rstudio.com/products/rstudio/) nutzen, welches ebenfalls installiert sein muss. Zusätzlich werden einigen Pakete benötigt. Diese können automatisch durch ein kleines R-Skript installiert werden, welches wir kurz vor dem Tutorial bereitstellen werden. Durch die Dozenten kann im Zweifelsfall Unterstützung für Windows-, Mac- sowie Linux-Systeme erfolgen. Wir bitten aber jeden Teilnehmer eindringlich, die notwendige Software bereits vor dem Tutorial zu installieren. Sollten dabei Fragen oder Probleme aufkommen, sind Sie eingeladen, sich auch schon vor dem Workshop an uns zu wenden.  

Nähere Informationen sowie alle Skripte, Daten und Anleitungen werden hier zu finden sein:  https://github.com/dirkseidensticker/R-Tutorial_CAA2016  
Die Entwicklung dieses Tutorials ist ein dynamischer Prozess, den wir gerne über Github teilen und offen legen möchten. Wir bitten zu beachten, dass Daten und Ausarbeitungen in diesem "Work-in-progress"-Archiv folglich mitunter unvollständig und Skripte teilweise noch nicht funktional sein können. 

## Benötigte Software
* [R: The R Project for Statistical Computing](https://www.r-project.org/):
	* Die neusten Installationsdateien: [The Comprehensive R Archive Network](http://ftp5.gwdg.de/pub/misc/cran/)
* [RStudio](https://www.rstudio.com/products/rstudio/download/)
* Pakete: *wir werden kurz vor dem Tutorial ein R-Skript anbieten, welches die notwendigen Pakete automatisch installiert; Anleitung folgt*

## Daten
Datengrundlage für den Kurs bildet ein modifizierter archäologischer Forschungsdatensatz, welcher sich auf den Trainingsdatensatz [AtlantGIS](https://github.com/kacebe/AtlantGIS) bezieht.