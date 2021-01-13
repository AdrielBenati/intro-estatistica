conjunto <- c(7, 8, 6, 10, 5, 9, 4, 12, 7, 8)

media <- mean(conjunto)
desvp <- sd(conjunto)

cat(sprintf('Média do conjunto =  %1.0f\n', media))
cat(sprintf('Desvio padrão do conjunto = %1.0f\n', desvp))
