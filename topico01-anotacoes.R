#----------- Tópico 01 -------------------
#--------anotações aula 02----------------

#alterar prompt para exibir mensagens em inglês 
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

#função log 
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

#sequencia com reptição
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
