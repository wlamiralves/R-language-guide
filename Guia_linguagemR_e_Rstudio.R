Guia Completo da Linguagem R dividido em níveis: iniciante, intermediário e avançado, com exemplos de código em cada seção para ajudá-lo a aprender e dominar a linguagem R em diferentes níveis de complexidade.

Nível Iniciante

1. Introdução à Linguagem R

O que é R? R é uma linguagem de programação e ambiente de software livre e open source desenvolvido especificamente para computação estatística e gráficos. É amplamente utilizado por estatísticos, analistas de dados, cientistas de dados e pesquisadores acadêmicos para análise de dados e modelagem estatística.

Instalação e Configuração

Para começar, você precisa instalar o R e o RStudio, um ambiente de desenvolvimento integrado (IDE) para R que facilita a escrita de código e a visualização de resultados.

Instalação do R: Baixe e instale o R a partir do CRAN (Comprehensive R Archive Network).

Instalação do RStudio: Baixe e instale o RStudio a partir do site oficial do RStudio.

Exemplos de Código

Operações Básicas

a <- 10
b <- 5
soma <- a + b
print(soma)  Saída: 15

Vetores e Operações

vetor <- c(3, 7, 11, 15, 19)
vetor_dobrado <- vetor * 2
print(vetor_dobrado)  Saída:  6 14 22 30 38

2. Estruturas de Dados Fundamentais

Vetores

Criando um vetor
vetor <- c(1, 3, 5, 7, 9)

Acessando elementos do vetor

primeiro_elemento <- vetor[1]  Primeiro elemento
ultimo_elemento <- vetor[length(vetor)]  Último elemento

Operações com vetores

soma <- sum(vetor)
media <- mean(vetor)

Matrizes

Criando uma matriz

matriz <- matrix(1:9, nrow = 3, ncol = 3)

Acessando elementos da matriz

elemento_2_3 <- matriz[2, 3]  # Linha 2, Coluna 3

3. Controle de Fluxo

Estruturas Condicionais

Exemplo de estrutura condicional

idade <- 20

if (idade >= 18) {
  print("Pode dirigir")
} else {
  print("Não pode dirigir")
}

Loops

Exemplo de loop for
for (i in 1:5) {
  print(i)
}

Exemplo de loop while
  
contador <- 1
while (contador <= 5) {
  print(contador)
  contador <- contador + 1
}


Nível Intermediário

4. Manipulação de Dados com Pacote dplyr
O pacote dplyr é amplamente utilizado para manipulação eficiente de dados em R, oferecendo funções simples e intuitivas para filtrar, transformar e resumir conjuntos de dados.

Carregamento de Dados e Filtragem

Carregando dados de um arquivo CSV

dados <- read.csv("dados.csv")

Filtrando dados com dplyr

library(dplyr)
dados_filtrados <- filter(dados, idade > 30)


5. Visualização de Dados com ggplot2
O ggplot2 é um pacote poderoso para criação de gráficos em R, baseado na ideia de construir um gráfico adicionando camadas.

Gráficos de Dispersão

library(ggplot2)

Criando um gráfico de dispersão

dados <- data.frame(x = rnorm(100), y = rnorm(100))
ggplot(dados, aes(x = x, y = y)) +
  geom_point() +
  labs(title = "Gráfico de Dispersão",
       x = "Eixo X",
       y = "Eixo Y")


Nível Avançado

6. Análise Estatística Avançada

Modelagem Estatística com lm

Exemplo de regressão linear simples

dados <- data.frame(x = 1:10, y = 2*(1:10) + rnorm(10))
modelo <- lm(y ~ x, data = dados)
summary(modelo)


7. Programação Funcional com purrr

O pacote purrr oferece ferramentas para trabalhar com funções e vetores de forma eficiente.

Aplicação de Funções em Vetores

library(purrr)

Aplicando uma função a um vetor

vetor <- 1:10
resultado <- map_dbl(vetor, ~ .x^2)
print(resultado)

Espero que este conteúdo amplie seu conhecimento sobre a linguagem R. Obrigado por chegar até aqui; todos nós ganhamos ao compartilhar conhecimento.
