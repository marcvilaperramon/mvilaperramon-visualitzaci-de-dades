install.packages("ggplot2")
install.packages("readxl")
library(ggplot2)
library(readxl)

income <- read.csv("C:/Users/Marc/Documents/UOC/Visualitzaci� de dades/Income Dataset.csv")

income_vis <- ggplot(income, aes(x = educational.num, y = fnlwgt, colour = gender)) +
  geom_point() + geom_smooth()  + labs(y = "Ingr�s", x = "Nivell d'estudis", colour = "G�nere")

income_vis + coord_cartesian(ylim = c(0, 500000)) +
  ggtitle("Ingr�s segons el nivell d'estudis i g�nere")
