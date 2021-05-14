#--------- Analise de dados --------------
#script aula 02

# Cria variavel com distribuicao normal
x <- rnorm(100)

# Mostra histograma da var x
hist(x)

# Cria data frame inicial
df <- data.frame(nome = c("Abrantes","Davi","Henry","Vilma","Ricardo"),
                 idade = c(48,25,28,25,30),
                 sexo = c("M","M","M","F","M"))

# Media da variavel idade
mean(df$idade)

#Selecionar uma coluna
df$idade
df[,2]

# Selecinoar uma linha
df[1,]

# Selecinar varias colunas
df[2,c("nome","idade")]
df[df$idade < 30,]
df[df$idade < 30,c("nome","idade")]

# Incluir variavel no data frame 
df$peso <- c(140,70,72,65,76)

# Lendo arquivo
bugs <- read.table("bugs.txt",header=TRUE)

# Boxplot de peso por sexo
bugs$sexo.f <- factor(bugs$SEX)
boxplot(bugs$WEIGHT ~ bugs$SEX,
        main="Boxplot de peso por sexo")


bugs2 <- read.table("bugs.txt",header=TRUE,
                    stringsAsFactors=FALSE)
#0: M
#1: F

# Valores randomicos
set.seed(123)
x <- rnorm(2)

# Calcular media dos pesos dos bugs
mean(bugs$WEIGHT)

# Medianados pesos dos bugs
median(bugs$WEIGHT)

#Desvio padrao pesos dos bugs
sd(bugs$WEIGHT)

#Variancia pesos dos bugs
sd(bugs2)
