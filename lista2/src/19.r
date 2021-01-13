dist <- c(1.8, 2.5, 0.4, 1.9, 4.4, 2.2, 3.5, 0.2, 0.9, 1.4, 1.1,
1.7, 1.2, 2.3, 1.9, 0.8, 1.5, 1.7, 1.4, 2.1, 3.2, 15.1, 2.1, 1.4,
0.5, 0.9, 1.7, 0.5, 0.8, 3.7, 1.4, 1.8, 2.0, 1.1, 1.0, 0.8)

stem(dist, scale = 2)

aaa <- summary(dist)

ccc <- c(0.4, 1.6, 2.8, 4.2, 8.8)
bbb <- summary(ccc)

cbind(aaa, bbb)

bbb <- c(0.4, 1.6, 2.8, 4.2, 8.8)

png(file = "boxplot.png")

boxplot(aaa, bbb,
        main = "Diagrama de caixas: comparação entre AAA e BBB",
        names  = c('aaa', 'bbb'))

dev.off()
