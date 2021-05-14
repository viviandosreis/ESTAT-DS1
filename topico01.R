#-----------------Tópico 01--------------------#


--alterar prompt para exibir mensagens em inglês 

Sys.setenv(LANGUAGE = "en") 



-- comando para carregar a bibilioteca a ser utitilizada. 

library(ggplot2)  



-- alterar o prompt 

options(prompt="\nR> ")  



-- função log 

log(x, base = exp(1)) 

logb(x, base = exp(1)) 

log10(x) 

log2(x) 



-- atribuir valor. Utilizar o sinal <-  
  
  x <- 10 ou x = 10  



-- criar vetor 

vetor <- c(1,3,9,8.5,10)  



-- O R não aceita vetor com elementos de diferentes tipos 

Ex.: 
  
  vetor2 <- c(1,3,9,"a","b") 

[1] "1" "3" "9" "a" "b" (transforma tudo para string). 



-- comando para limpar lista de elementos 

R> rm(lista) 

R> rm(list = ls()) --remove todos os elementos 



-- sequencia de numeros 

R> 10 : -1 

[1] 10  9  8  7  6  5  4  3  2  1  0 -1 



R> seq(from=3,to=30,by=3) 

[1]  3  6  9 12 15 18 21 24 27 30 



1 : 10 equivale a seq(from=1,to=10,by=1) 



seq(from=1,to=10,length.out=20) 



-- sequencia com repetição 

rep(10,12) 

[1] 10 10 10 10 10 10 10 10 10 10 10 10 



rep(c(1,2,3), each=2) 

[1] 1 1 2 2 3 3 



rep(c(1,2,3), each=2, times=3) 

[1] 1 1 2 2 3 3 1 1 2 2 3 3 1 1 2 2 3 3 



-- alterar elemento do vetor 

R> z 

[1] 1 1 2 2 3 3 1 1 2 2 3 3 1 1 2 2 3 3 

R> z[10] <- 9 

R> z 

[1] 1 1 2 2 3 3 1 1 2 9 



-- incrementar vetor 

R> z2 <- c(z,80,90,100) 



R> z2 

[1]   1   1   2   2   3   3   1   1   2   9   3   3   1   1   2   2   3   3  80  90 100 





- ordenar vetor 

crescente: R> sort(z) --> [1] 1 1 1 1 1 1 2 2 2 2 2 3 3 3 3 3 3 9 

descrescente: R> sort(z,decreasing=TRUE)-->[1] 9 3 3 3 3 3 3 2 2 2 2 2 1 1 1 1 1 1 

z <- sort(z) 



-- tamanho do vetor 

length(z) 





-- retirar elemento do vetor 

R> z[-10] 

[1]   1   2   3   4   5   6   7   8   9  11  12 (excluiu o 10) 



-- operação em todos os elementos do vetor 1 

R> z 

[1]  1 19 99 21  4 



R> z+1 

[1]   2  20 100  22   5 



-- operação em todos os elementos do vetor 2 

R> x 

[1]  1  2  3  4  5  6  7  8  9 10 



R> y 

[1] 11 12 13 14 15 16 17 18 19 20 



R> x+y 

[1] 12 14 16 18 20 22 24 26 28 30 



-- somatório 

x <- 1:10 

sum(x) 

sum(x^2) 



-- produtório 

prod(x) 



-- MATRIZES -- 
  
  
  
  R> A <- matrix((1:12),nrow=3,ncol=4) 



R> A 

[,1] [,2] [,3] [,4] 

[1,]    1    4    7   10 

[2,]    2    5    8   11 

[3,]    3    6    9   12 



R> B <- matrix((1:12),nrow=3,ncol=4,byrow=TRUE) 



R> B 

[,1] [,2] [,3] [,4] 

[1,]    1    2    3    4 

[2,]    5    6    7    8 

[3,]    9   10   11   12 





-- soma e subtração de matrizes 



R> A+B 

[,1] [,2] [,3] [,4] 

[1,]    2    6   10   14 

[2,]    7   11   15   19 

[3,]   12   16   20   24 



R> A-B 

[,1] [,2] [,3] [,4] 

[1,]    0    2    4    6 

[2,]   -3   -1    1    3 

[3,]   -6   -4   -2    0 



-- multiplicação de matrizes 



R> A*B 

[,1] [,2] [,3] [,4] 

[1,]    1    8   21   40 

[2,]   10   30   56   88 

[3,]   27   60   99  144 

R> A+B 

[,1] [,2] [,3] [,4] 

[1,]    2    6   10   14 

[2,]    7   11   15   19 

[3,]   12   16   20   24 



-- selecionar uma linha ou uma coluna da matriz 

R> B[1,] 

[1] 1 2 3 4 



R> B[,4] 

[1]  4  8 12 



-- selecionar mais de um alinha ou coluna (B(linha,coluna)) da matriz 

R> B 

[,1] [,2] [,3] [,4] 

[1,]    1    2    3    4 

[2,]    5    6    7    8 

[3,]    9   10   11   12 



R> B[1:2,] (coluna) 

[,1] [,2] [,3] [,4] 

[1,]    1    2    3    4 

[2,]    5    6    7    8 



R> B[c(1,3),] (coluna) 

[,1] [,2] [,3] [,4] 

[1,]    1    2    3    4 

[2,]    9   10   11   12 



R> B[c(1,3),c(2,4)] 

[,1] [,2] 

[1,]    2    4 

[2,]   10   12 



-- selecionar elementos da diagonal da matriz 

R> diag(B) 

[1]  1  6 11 



-- substituição de elementos da matriz 

R> B 

[,1] [,2] [,3] [,4] 

[1,]    1    2    3    4 

[2,]    5    6    7    8 

[3,]    9   10   11   12 



R> B[1,] <- c(0,0,0,0) 



R> B 

[,1] [,2] [,3] [,4] 

[1,]    0    0    0    0 

[2,]    5    6    7    8 

[3,]    9   10   11   12 



R> B[,2] <- c(0,0,0) 



R> B 

[,1] [,2] [,3] [,4] 

[1,]    0    0    0    0 

[2,]    5    0    7    8 

[3,]    9    0   11   12 



-- transposta 

R> t(B) 

[,1] [,2] [,3] 

[1,]    0    5    9 

[2,]    0    0    0 

[3,]    0    7   11 

[4,]    0    8   12 



-- ARRAY -- 
  
  R> A <- array(1:24,dim=c(3,4,2))     --dim = c(linha,coluna,qnt dimensões) 



R> A 

, , 1 



[,1] [,2] [,3] [,4] 

[1,]    1    4    7   10 

[2,]    2    5    8   11 

[3,]    3    6    9   12 



, , 2 



[,1] [,2] [,3] [,4] 

[1,]   13   16   19   22 

[2,]   14   17   20   23 

[3,]   15   18   21   24 



-- selecionar uma linha ou uma coluna do array 



R> A 

, , 1 



[,1] [,2] [,3] [,4] 

[1,]    1    4    7   10 

[2,]    2    5    8   11 

[3,]    3    6    9   12 



, , 2 



[,1] [,2] [,3] [,4] 

[1,]   13   16   19   22 

[2,]   14   17   20   23 

[3,]   15   18   21   24 





R> A[,1,2]    --todas as linhas da segunda coluna da segunda dimensão 

[1] 13 14 15 



R> A[,c(1,3),2] 

[,1] [,2] 

[1,]   13   19 

[2,]   14   20 

[3,]   15   21 



-- Array multidimensional(subdimensão) 

R> B <- array(1:3*3*2*3,dim=(c(3,4,2,3)))     --dim=(linha,coluna,subdimensão,dimensão principal) 

R> B 

, , 1, 1 



[,1] [,2] [,3] [,4] 

[1,]   18   18   18   18 

[2,]   36   36   36   36 

[3,]   54   54   54   54 



, , 2, 1 



[,1] [,2] [,3] [,4] 

[1,]   18   18   18   18 

[2,]   36   36   36   36 

[3,]   54   54   54   54 



, , 1, 2 



[,1] [,2] [,3] [,4] 

[1,]   18   18   18   18 

[2,]   36   36   36   36 

[3,]   54   54   54   54 



, , 2, 2 



[,1] [,2] [,3] [,4] 

[1,]   18   18   18   18 

[2,]   36   36   36   36 

[3,]   54   54   54   54 



, , 1, 3 



[,1] [,2] [,3] [,4] 

[1,]   18   18   18   18 

[2,]   36   36   36   36 

[3,]   54   54   54   54 



, , 2, 3 



[,1] [,2] [,3] [,4] 

[1,]   18   18   18   18 

[2,]   36   36   36   36 

[3,]   54   54   54   54 



, 11 
13 
14 
41 
15 
16 
17 
18 
19 
20 
21 
10 
11 
12 
22 
23 
24 
[3,1 3 
  13 
  14 
  15 
  16 
  17 
  18 
  19 
  20 
  21 
  t .41 
  10 
  11 
  12 
  22 
  23 
  24 
  
  
  
  
  -- Operações de comparação 
  
  R> z <- c(1,5,8,3,90,33,1,2,4,100,37) 
  
  R> z<5 
  
  [1]  TRUE FALSE FALSE  TRUE FALSE FALSE  TRUE  TRUE  TRUE FALSE FALSE 
  
  R> z[z<5] 
  
  [1] 1 3 1 2 4 
  
  R> z>50 
  
  [1] FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE  TRUE FALSE 
  
  R> z[(z<5) & (z>50)]      --and 
  
  numeric(0) 
  
  R> z[(z<5) | (z>50)]        --or 
  
  [1]   1   3  90   1   2   4 100 
  
  
  
  
  
  R> sexo <- rep(c("M","F"),times=50) 
  
  R> sexo 
  
  [1] "M" "F" "M" "F" "M" "F" "M" "F" "M" "F" "M" "F" "M" "F" "M" "F" "M" "F" "M" "F" "M" "F" "M" "F" "M" "F" "M" "F" "M" "F" "M" "F" "M" "F" "M" "F" "M" "F" "M" "F" 
  
  [41] "M" "F" "M" "F" "M" "F" "M" "F" "M" "F" "M" "F" "M" "F" "M" "F" "M" "F" "M" "F" "M" "F" "M" "F" "M" "F" "M" "F" "M" "F" "M" "F" "M" "F" "M" "F" "M" "F" "M" "F" 
  
  [81] "M" "F" "M" "F" "M" "F" "M" "F" "M" "F" "M" "F" "M" "F" "M" "F" "M" "F" "M" "F" 
  
  
  
  R> sexo=="M" 
  
  [1]  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE 
  
  [28] FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE 
  
  [55]  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE 
  
  [82] FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE 
  
  
  
  
  
  R> normal <- rnorm(1000) 
  
  R> hist(normal) 
  
  
  
  
  R> mean(normal)   ---media 
  
  [1] -0.06459687 
  
  
  
  R> sd(normal)      --desvio padrão 
  
  [1] 0.9879491 
  
  
  
  cbind(sexo,normal)    ---associa os vetores 
  
  
  
  R> normal[sexo=="M"] 
  
  [1]  2.679834190  0.251048535 -0.483643102  1.329074495  0.463889062 -0.896451929 -0.456439360  0.841597653  0.668026444  2.008281430  1.391833602  0.462910672 
  
  [13]  0.395700057  0.431280070 -0.104209857 -0.751524230  0.759877314  0.448545815  0.773864036 -0.174996804 -0.395001738 -1.438194271  0.759474957 -2.437359886 
  
  [25]  0.380682991  0.272138377  0.173837290  0.481202078  0.764575179 -0.523236622  1.043974206 -0.001807678 -0.071941432 -1.184357176 -1.170335743 -0.275889191 
  
  [37]  0.291406289  0.060016259 -0.406752018  0.705072682 -0.124035717 -0.312876676  1.633157514  0.918729513 -1.087566578 -0.953550147 -0.839382358 -1.364319463 
  
  [49] -0.762995311  0.423714357 -0.202330388 -2.082984620 -1.025763856  1.997661416 -0.340573570  0.346461491 -0.290131574  2.087013076  1.071552508 -0.887058810 
  
  [61] -0.144154713 -1.469708381  0.548610621  0.326047829  1.836510666  0.695013650 -1.329022407 -0.391148720 -1.023677719  1.801565237  0.146427462 -2.408259411 
  
  [73]  0.615867945 -0.965849638 -0.750593586 -0.232670817  0.104141912  0.560485691 -0.400837119  1.039799043 -1.420217999 -1.217505876  1.729034699  0.166673679 
  
  [85] -0.348073955 -1.180742059  1.189543943 -0.549563803  0.524401627  0.159076463  0.495394739 -0.394365052  0.582599570 -1.877367061 -0.596327209 -1.407742718 
  
  [97] -0.252195158 -0.530165924 -0.032300437  1.330753699 -0.274354459  1.705904000 -0.719611611 -1.935083052 -0.005434502 -0.109198483  0.812982411 -1.101887992 
  
  [109]  0.046715667 -1.063970188  0.444460104  1.700852691 -0.026091107 -0.981462010  0.452722337 -1.582889963 -0.670281225  1.054627607 -0.374276407  0.662508544 
  
  [121] -1.575753270  0.363772735  1.299734009  1.983051761  0.073641998  0.789223452  0.613016967  0.524862298  0.149688209  1.578215901  0.471247851 -0.062184357 
  
  [133] -0.138603119 -0.239241413 -0.499884427 -0.424586407 -0.359192428 -0.007823394  0.591122343 -0.840234158 -0.869716438 -0.004267941 -0.987468266 -0.243438337 
  
  [145]  0.148678448 -0.102552515 -0.873078709  1.422244007  1.286063690 -0.994476990  0.324521274  1.205847475 -0.462213506  2.031214099 -0.871167350  0.386977515 
  
  [157]  0.104098585  0.301157289 -0.668830464 -0.607706321 -0.269552499  1.319135500 -0.738530153  0.607913071 -1.218470197 -1.172777329 -0.013949342 -1.086534609 
  
  [169] -1.518790636  0.256818331  0.524949917 -1.030300597 -1.788295541  0.937167965 -0.823735094  0.047450240  0.438557610 -0.612348416 -0.948645970 -1.513208470 
  
  [181] -1.393934986  3.027679073  0.624409407 -0.821908089 -0.415156037 -0.171339765 -1.825870860 -1.981142952  0.334629373  0.780958388 -2.631527611  0.369108674 
  
  [193] -0.248162994 -1.454131692  0.658987750  1.154893968  1.397046567 -1.127752468 -1.521002855 -0.251472920 -0.360222032 -0.674184268 -0.465985852 -0.617244239 
  
  [205] -1.211404138  1.646960501 -0.472307119 -0.381651466 -0.081376296  0.585018307 -0.975462618  0.634809030 -2.822831001 -0.525070142  0.993026827 -0.342849411 
  
  [217]  0.400324388  0.024883415 -0.038880033 -1.014725514  0.125661222 -3.055448231 -0.246156365  0.724102697  1.633758543 -0.992171731  0.356252783 -1.596131378 
  
  [229]  0.321437422  1.248960647 -0.094352282 -0.499497836  0.081951420 -0.269905179 -1.041764151 -0.898705611 -1.584866245  0.369998858  0.117663298 -1.161829230 
  
  [241] -0.759637677  0.844783299  1.482197110 -0.391092683  0.009504557  0.466024345 -0.222632789 -1.144134659  0.289658941  0.810293537 -0.851000621 -0.117172475 
  
  [253]  1.110015294  0.810507279 -0.526473790  1.018635491 -0.707168119 -0.746743539 -1.782506868  0.770802296  1.770938553 -0.692239375 -1.362813814 -0.722973051 
  
  [265] -0.072012253 -1.462649957 -1.075005995  0.745723023 -0.002048652 -1.455718995 -0.620783286  0.432793128  0.182855862 -0.433364603 -0.259056956 -1.130039303 
  
  [277]  0.515647633  0.320021001 -0.508988805 -0.192046517  1.957644013  0.940799246 -0.049938719 -1.885690847 -0.711214964 -0.496375460  0.036059584 -0.189095395 
  
  [289]  1.346771322  0.019793123  3.273604006  1.719420521 -0.323584209 -1.491799768 -0.020423033  0.770973354 -0.761934695  0.148562174 -1.485304779 -0.073706425 
  
  [301] -1.255424199  0.519375943  1.408916822  0.707483906  1.168042171 -0.372672978 -1.308940717  0.418930531 -2.174159661 -0.307251596  0.974730599 -1.135793148 
  
  [313] -0.007328788 -0.444999123  0.498938960 -0.077636630 -0.162591907  0.603818402  0.565944458  1.059075976 -1.213889550  0.569023072  0.174997893 -1.259103840 
  
  [325]  0.703643527 -0.463958381  0.580789623 -0.559922961  0.381587915  0.536208095 -1.099333424 -0.933696458 -1.095126292 -0.477960187  0.106977999  2.262691912 
  
  [337] -1.356329549  0.231478887  0.558922321 -1.008740405  0.329479725  0.116917925 -1.416260536 -0.620595251 -0.641656698 -0.494313422 -0.101282007 -0.370622930 
  
  [349] -0.116947122 -0.868062930  0.962580462 -0.908643953  1.208752881  1.035993401  1.025452162  1.291094182 -0.873127586 -2.509338914 -1.704274405  0.503376333 
  
  [361] -0.104010547 -0.530186384  0.136650038  0.360776372 -1.030250033 -1.147172622  0.318180987 -1.077820444 -0.636490178  0.774831939 -0.030263719 -0.591388283 
  
  [373]  0.574145774  1.735124276 -0.198188093 -1.764101081 -0.080154927 -0.129836470 -0.274848735  1.389736884  0.199193353 -0.503383919  1.210640428  0.135069019 
  
  [385] -1.155029300 -0.943933690 -0.373515479 -0.151050228  0.172391120 -0.371407827 -0.584866602  0.752112216 -0.504763768 -0.425817994  1.387368975 -0.656220632 
  
  [397]  0.971969629  0.258763548  1.659901381  0.069424817 -1.463635538  1.504648473  0.457508889  1.215809925 -0.057374345  1.398726046 -1.093276383  0.848844087 
  
  [409]  0.561220476  1.312321926 -0.013958846  0.585940239 -1.564388490  0.534944319  0.430188135 -0.773320092  0.010687817  1.080689095 -1.188961242  0.378324456 
  
  [421]  0.003841503 -0.071709957 -1.661824724  1.002645017 -0.811293679  0.488560129 -1.967085220  1.973223844  0.416886905  0.051556728 -1.405140997 -0.944675886 
  
  [433] -0.171379496  0.953559960 -0.355730884  0.605213251  0.291781223 -0.708208564 -0.298166962 -1.128753242 -0.136525841  1.966504698  1.343105510  1.738372970 
  
  [445] -2.006883624  0.614345293 -0.145930381  0.513882682  0.259127276  0.786056701 -2.093626037 -1.794734092  0.489774751  0.775764487 -1.899068522  0.382618312 
  
  [457] -0.067068894  0.534075312  0.250956078  1.606783753  0.289378024  0.169643720 -0.702391006  0.228041879  0.190097731  0.152801688  0.691223453  0.071104361 
  
  [469] -1.944099307 -0.397427341  0.424596236 -0.327243900  0.717117707 -0.424280510 -2.184245215  1.562520641 -0.590691288 -0.144082751 -1.500343938  1.541332521 
  
  [481]  0.408713944  0.947561636 -0.465708455 -0.482907810  1.510488604 -1.239513846 -1.111419279  2.723567843  0.103138756 -0.058529234 -1.726074978 -0.312589471 
  
  [493]  1.137090151 -0.090050749 -1.299323031 -0.833411525  1.693190349 -0.672865406 -0.772197201 -0.626874124 
  
  
  
  
  
  
  
  R> normal[sexo=="M"] & (normal > 0) 
  
  [1]  TRUE  TRUE  TRUE  TRUE FALSE FALSE  TRUE FALSE  TRUE  TRUE FALSE FALSE FALSE FALSE  TRUE FALSE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE 
  
  [27]  TRUE FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE FALSE  TRUE FALSE  TRUE FALSE FALSE  TRUE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE 
  
  [53]  TRUE  TRUE  TRUE FALSE  TRUE FALSE FALSE FALSE  TRUE  TRUE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE 
  
  [79]  TRUE FALSE FALSE  TRUE FALSE  TRUE  TRUE  TRUE  TRUE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE  TRUE FALSE  TRUE 
  
  [105] FALSE  TRUE  TRUE FALSE FALSE  TRUE  TRUE FALSE FALSE  TRUE  TRUE FALSE  TRUE  TRUE FALSE FALSE FALSE  TRUE FALSE FALSE  TRUE  TRUE  TRUE FALSE  TRUE FALSE 
  
  [131]  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE FALSE  TRUE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE FALSE 
  
  [157] FALSE FALSE  TRUE FALSE FALSE  TRUE FALSE FALSE  TRUE FALSE  TRUE  TRUE FALSE FALSE FALSE  TRUE  TRUE  TRUE FALSE FALSE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE 
  
  [183] FALSE  TRUE  TRUE FALSE FALSE FALSE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE FALSE FALSE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE FALSE FALSE FALSE  TRUE 
  
  [209] FALSE  TRUE FALSE  TRUE  TRUE  TRUE FALSE FALSE  TRUE FALSE FALSE  TRUE  TRUE FALSE  TRUE FALSE FALSE  TRUE FALSE  TRUE  TRUE FALSE FALSE  TRUE FALSE  TRUE 
  
  [235]  TRUE FALSE FALSE FALSE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE  TRUE  TRUE FALSE  TRUE FALSE  TRUE  TRUE 
  
  [261]  TRUE  TRUE FALSE  TRUE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE  TRUE  TRUE FALSE  TRUE FALSE FALSE FALSE  TRUE FALSE FALSE 
  
  [287] FALSE  TRUE  TRUE FALSE FALSE  TRUE FALSE  TRUE  TRUE FALSE  TRUE  TRUE FALSE FALSE  TRUE FALSE  TRUE FALSE FALSE  TRUE  TRUE FALSE FALSE FALSE  TRUE FALSE 
  
  [313]  TRUE  TRUE  TRUE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE  TRUE  TRUE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE  TRUE FALSE  TRUE 
  
  [339]  TRUE FALSE  TRUE  TRUE FALSE FALSE FALSE  TRUE  TRUE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE  TRUE  TRUE 
  
  [365]  TRUE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE FALSE FALSE FALSE  TRUE FALSE  TRUE FALSE FALSE  TRUE  TRUE  TRUE FALSE  TRUE FALSE FALSE  TRUE FALSE 
  
  [391]  TRUE FALSE  TRUE FALSE FALSE FALSE FALSE  TRUE FALSE  TRUE FALSE FALSE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE  TRUE  TRUE FALSE  TRUE FALSE  TRUE 
  
  [417] FALSE FALSE  TRUE  TRUE FALSE FALSE  TRUE FALSE FALSE  TRUE FALSE  TRUE  TRUE FALSE FALSE FALSE  TRUE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE 
  
  [443] FALSE FALSE FALSE FALSE  TRUE FALSE  TRUE FALSE FALSE  TRUE  TRUE FALSE FALSE FALSE  TRUE FALSE  TRUE FALSE FALSE FALSE FALSE  TRUE  TRUE FALSE FALSE FALSE 
  
  [469] FALSE  TRUE FALSE FALSE FALSE FALSE  TRUE FALSE  TRUE FALSE FALSE FALSE FALSE  TRUE  TRUE FALSE  TRUE FALSE FALSE FALSE  TRUE FALSE  TRUE  TRUE FALSE FALSE 
  
  [495] FALSE  TRUE  TRUE FALSE  TRUE  TRUE FALSE  TRUE FALSE FALSE  TRUE FALSE  TRUE  TRUE FALSE  TRUE  TRUE FALSE FALSE  TRUE FALSE FALSE FALSE  TRUE  TRUE  TRUE 
  
  [521]  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE 
  
  [547] FALSE  TRUE FALSE  TRUE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE  TRUE FALSE FALSE  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE  TRUE 
  
  [573]  TRUE FALSE FALSE  TRUE  TRUE  TRUE  TRUE FALSE  TRUE FALSE  TRUE FALSE FALSE  TRUE FALSE FALSE FALSE  TRUE  TRUE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE 
  
  [599] FALSE  TRUE FALSE FALSE  TRUE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE  TRUE  TRUE FALSE  TRUE FALSE  TRUE  TRUE FALSE FALSE FALSE 
  
  [625] FALSE  TRUE FALSE  TRUE  TRUE  TRUE FALSE  TRUE FALSE  TRUE  TRUE FALSE  TRUE FALSE  TRUE FALSE FALSE  TRUE  TRUE FALSE  TRUE FALSE FALSE  TRUE  TRUE  TRUE 
  
  [651] FALSE FALSE  TRUE  TRUE FALSE  TRUE  TRUE FALSE  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE  TRUE  TRUE  TRUE FALSE FALSE  TRUE  TRUE FALSE 
  
  [677]  TRUE  TRUE FALSE FALSE  TRUE FALSE  TRUE FALSE FALSE  TRUE FALSE FALSE FALSE  TRUE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE 
  
  [703] FALSE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE  TRUE FALSE  TRUE FALSE  TRUE FALSE FALSE  TRUE FALSE FALSE  TRUE FALSE FALSE  TRUE  TRUE  TRUE FALSE 
  
  [729] FALSE  TRUE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE FALSE  TRUE FALSE FALSE FALSE FALSE 
  
  [755] FALSE FALSE FALSE  TRUE  TRUE FALSE  TRUE  TRUE FALSE FALSE  TRUE FALSE  TRUE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE 
  
  [781] FALSE  TRUE  TRUE FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE FALSE  TRUE  TRUE  TRUE  TRUE FALSE 
  
  [807]  TRUE  TRUE FALSE FALSE  TRUE FALSE FALSE  TRUE  TRUE  TRUE  TRUE FALSE  TRUE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE  TRUE  TRUE  TRUE FALSE FALSE FALSE 
  
  [833]  TRUE  TRUE  TRUE  TRUE FALSE FALSE  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE FALSE  TRUE FALSE 
  
  [859]  TRUE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE  TRUE  TRUE FALSE FALSE  TRUE  TRUE  TRUE FALSE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE FALSE  TRUE FALSE 
  
  [885]  TRUE FALSE  TRUE FALSE FALSE  TRUE  TRUE FALSE FALSE  TRUE  TRUE FALSE  TRUE FALSE  TRUE FALSE FALSE  TRUE FALSE FALSE  TRUE FALSE  TRUE  TRUE FALSE  TRUE 
  
  [911]  TRUE FALSE FALSE FALSE  TRUE FALSE  TRUE FALSE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE 
  
  [937] FALSE FALSE FALSE FALSE  TRUE  TRUE FALSE FALSE  TRUE FALSE FALSE  TRUE FALSE  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE FALSE  TRUE FALSE 
  
  [963]  TRUE  TRUE FALSE FALSE FALSE  TRUE  TRUE FALSE FALSE FALSE FALSE  TRUE  TRUE FALSE  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE FALSE FALSE 
  
  [989] FALSE FALSE FALSE  TRUE  TRUE FALSE FALSE  TRUE FALSE  TRUE FALSE  TRUE 
  
  
  
  
  
  
  
  R> meses <- c("JAN","FEV","MAR","ABR","MAI","JUN","JUL","AGO","SET","OUT","NOV","DEZ")  
  
  R> meses.f1 <- factor(meses, ordered=TRUE) 
  
  R> meses.f1 <- factor(meses) 
  
  R> str(meses.f1) 
  
  Factor w/ 12 levels "ABR","AGO","DEZ",..: 5 4 9 1 8 7 6 2 12 11 ... 
  
  
  
  
  
  
  
  -- Data Frame (RStudio) 
  
  
  
  
  
  #----------- Analise de dados ------------ 
  
  
  
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
  
  
  
  # Mediana dos pesos dos bugs 
  
  median(bugs$WEIGHT) 
  
  
  
  #Desvio padrao dos pesos dos bugs 
  
  sd(bugs$WEIGHT) 
  
  
  
  #Variancia dos pesos dos bugs 
  
  sd(bugs2) 
  
  
  
  
  
  
  
  -- Variância: desvio quadrático médio 
  
  
  
  
  


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