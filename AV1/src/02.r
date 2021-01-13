## Define número de matrícula
matricula <- c(2, 0, 2, 0, 0, 1, 1, 4, 4, 6)

## Retorna tabela de frequência simples
table(matricula)

png(file = "histograma.png")
hist(matricula, main = "Algarismos da matrícula", xlab = "Peso", ylab = "Frequência")

media <- mean(matricula)
cat(sprintf('Média dos algarismos: %1.0f\n', media))

mediana <- median(matricula)
cat(sprintf('Mediana dos algarismos: %.1f\n', mediana))

## Função para determinar a moda
mode <- function (x) {
    u <- unique (x)
    u[which.max(tabulate(match(x, u)))]
}

moda <- mode(matricula)
cat(sprintf('Moda dos algarismos: %.0f\n', moda))

variancia <- var(matricula)
cat(sprintf('Variância dos algarismos: %.3f\n', variancia))

desviop <- sd(matricula)
cat(sprintf('Variância dos algarismos: %.3f\n', desviop))

outramat <- c(2, 0, 2, 0, 0, 4, 8, 9, 6, 7)

png(file = "boxplot.png")

boxplot(matricula ~ outramat, xlab = "Matrícula dada",
   ylab = "Minha matrícula", main = "Comparação entre matrículas")

median(outramat)
outramat
