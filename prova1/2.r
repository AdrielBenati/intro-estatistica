### Questão 2
## Capturar input do usuário como string
matricula <- readline(prompt="Insira sua matrícula: ")

## Divide string em caracteres, transforma-os em lista numérica
matricula <- as.numeric(strsplit(as.character(matricula), "")[[1]])
print(matricula)

### b) Histograma
## gerar histograma
png(file = "histograma.png")
hist(matricula, main = "Algarismos da matrícula", xlab = "Peso", ylab = "Frequência")
## ainda confuso sobre esta parte. por que isso?
dev.off()

### b) Média, mediana, moda, variância e devio padrão
## Média
## calcular a média e printar
media <- mean(matricula)
cat(sprintf('Média dos algarismos: %1.0f\n', media))

## Mediana
## calcular a mediana e printar
mediana <- median(matricula)
cat(sprintf('Mediana dos algarismos: %.1f\n', mediana))

## Moda
## a biblioteca padrão de R não possui função para determinação da
## moda, por isso definimos uma função aqui:
mode <- function (x) {
    u <- unique (x)
    u[which.max(tabulate(match(x, u)))]
}

## calcular a moda e printar
moda <- mode(matricula)
cat(sprintf('Moda dos algarismos: %.0f\n', moda))

## Variância
## calcular a variância e printar
variancia <- var(matricula)
cat(sprintf('Variância dos algarismos: %.3f\n', variancia))

## Desvio Padrão
## calcular desvio padrão e printar
desviop <- sd(matricula)
cat(sprintf('Variância dos algarismos: %.3f\n', desviop))

### d) Boxplot comparativo
outramat <- c(2, 0, 2, 0, 0, 4, 8, 9, 6, 7)

png(file = "boxplot.png")

boxplot(matricula ~ outramat, xlab = "Matrícula dada",
   ylab = "Minha matrícula", main = "Comparação entre matrículas")

median(outramat)
outramat
