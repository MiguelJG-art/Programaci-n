#problema 1
10000%%3  #rpta: sobra 1 dolar

#problema 2
4560%%3    #rpta: si es divisible

#problema 3
v<-c(2:87)
p<-v%%7
p[p==0]    #rpta: 12 numeros serian divisibles por 7
 
#problema 4
vector_1<-c(7,3)
vector_2<-c(seq(from=5, to=25, by=5))
A<-ifelse(vector_1%%2==0, "TRUE","FALSE")
B<-ifelse(vector_2>10, "TRUE","FALSE")
data.frame(A, B)

#problema 5

s<-c(1:100)
sum(s)    # la suma es 5050

#problema 6
num<-c(1,-4,5,9,-4)
min(c(1,-4,5,9,-4))
ni<-c(1,-4,4,9,-4)
ni[2]
ni[5]   #las posiciones del valor minimo son en el 2 y 5



#problema 7
factorial(8)   #rpta: 40320
 

#problema 8
i<-3:7
sum(exp(i))  #rpta: 1723.159

#problema 9
i<-1:10
prod(log(sqrt(i)))  #rpta: 0




#problema 10
a_segmento_circular<-function(R,r,ang){
    A<-((r^2)/2)*((pi*ang/180)-sin(ang))}return(A)
  }
#problema 11

m<- 1:10
n<- 10:1
rev(m)
rev(n)


#problema 12
i<-10:100
sum(i^3+4*i^2)  #Rpta: 26852735

#problema 13
i<-1:25
sum(2^i/i+3^i/i^2)  #Rpta: 2129170437

#problema 14
d_paises<-read.table("https://raw.githubusercontent.com/fhernanb/datos/master/Paises.txt")
View(d_paises)
nrow(d_paises)
#rpta: son 5 variables
#hay 107 paises

d_paises[d_paises$poblacion==max(d_paises[,2]),]

d_paises[d_paises$alfabetizacion==min(d_paises[,3]),]

#China es el de mayor poblacion
#Burkina faso es el pais con mas baja alfabetizacion

#problema 15
install.packages("tidyverse")
library(tidyverse)
?mtcars
dato_mtcars<-mtcars
names(mtcars)
view(mtcars)
summary(mtcars)

##a
millas_18<-filter(mtcars, mpg<18)
view(millas_18)


##b
m_cyl<-filter(mtcars, cyl==4)
view(m_cyl)


##c
trans_manual<-filter(mtcars, wt>2.5 & am==1)
view(trans_manual)


#problema 16
