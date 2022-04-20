install.packages("ggplot2")
install.packages("readxl")
library(ggplot2)
library(readxl)

income <- read.csv("C:/Users/Marc/Documents/UOC/Visualització de dades/Income Dataset.csv")

income_vis <- ggplot(income, aes(x = educational.num, y = fnlwgt, colour = gender)) +
  geom_point() + geom_smooth()  + labs(y = "Ingrés", x = "Nivell d'estudis", colour = "Gènere")

income_vis + coord_cartesian(ylim = c(0, 500000)) +
  ggtitle("Ingrés segons el nivell d'estudis i gènere")
