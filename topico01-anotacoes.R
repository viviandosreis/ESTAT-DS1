#----------- Topico 01 -------------------
#--------anotacões aula 02----------------

#alterar prompt para exibir mensagens em ingles 
Sys.setenv(LANGUAGE = "en") 

#comando para carregar a bibilioteca a ser utitilizada. 
library(ggplot2)  

#alterar o prompt 
options(prompt="R> ")

#atribuir valor: <- ou = (Utilizar o sinal <-)
x <- 10
x
x = 10
x

#funcao log 
log(x, base = exp(1)) 
logb(x, base = exp(1)) 
log10(x) 
log2(x) 

#criar vetor 
vetor <- c(1,3,9,8.5,10)  
vetor

#sequencia de numeros 
10 : -1 
1:10
seq(from=3,to=30,by=3) 
seq(from=1,to=10,length.out=20) 

#sequencia com repticao
rep(10,12) 
rep(c(1,2,3), each=2) 
rep(c(1,2,3), each=2, times=3) 

#comando para limpar lista de elementos: rm
lista <- 1:10
ls()
rm(lista)
ls()
lista

#alterar elemento do vetor 
z <- rep(c(1,2,3), each=2, times=3) 
z
z[10] <- 9 
z 

#incrementar vetor 
z2 <- c(z,80,90,100) 
z2 

#ordenar vetor 
#--crescente:
z
sort(z)

#--descrescente: 
sort(z,decreasing=TRUE)
z <- sort(z) 

#tamanho do vetor 
length(z) 

#retirar elemento do vetor 
z <- 1:10
z
z <- z[-10]
z

#operacao em todos os elementos do vetor 1 
z <- c(1,19,99,21,4)
z
z+1

#operacao em todos os elementos do vetor 2 
x <- 1:10
x
y <- 11:20
y
x+y

#somatorio 
x <- 1:10 
x
sum(x) 
sum(x^2) 


#produtorio 
prod(x) 


#-----------Matrizes----------------

A <- matrix((1:12),nrow=3,ncol=4)
A
B <- matrix((1:12),nrow=3,ncol=4,byrow=TRUE)
B

# soma e subtracao de matrizes 
A+B
A-B

#multiplicacao de matrizes
A*B

#selecionar uma linha ou uma coluna da matriz 
B[1,]
B[,4]


#selecionar mais de um alinha ou coluna (B(linha,coluna)) da matriz 
B
B[1:2,] #coluna
B[c(1,3),] #coluna
B[c(1,3),c(2,4)] 

#selecionar elementos da diagonal da matriz 
diag(B)


#substituicao de elementos da matriz 
B
B[1,] <- c(0,0,0,0)
B
B[,2] <- c(0,0,0) 
B

#transposta
t(B)


#-----------Array----------
#dim = c(linha,coluna,qnt dimensões)
A <- array(1:24,dim=c(3,4,2))   
A


#selecionar uma linha ou uma coluna do array 
