getwd()
setwd()
dir()
history()
a <- 5
b <- 7
c<-2
d<-"hey"
f<-T
is.numeric(a)
is.numeric(b)
is.numeric(d)
is.logical(f)
is.character(d)
class(a)
class(d)
a==b # es igual a..
a!=b # es diferente a.....
class(a)== class(b)
class(a)!= class(c)
#estructurtas de datos
# vector
v1<-c(1,2,3,4,5)
v2<-c("a","b","c")
v3<-c(T,F,T,F)
v4<-c(T,F,T,"G") # coercion
class(v3)
class(v4)
v4
v5<-c(1,2,3,4,TRUE,FALSE)
class(v5)
v5
##Numeric
#Float (decimales)
#Integer (enteros)



###CLASE 2
assign("hey", 4)
#Asignar nombres de variables
# snake_case 
antamina_ph_2018 <-
miguel_angel_jara
#Camel_case
  AntaminaPH2018
MiguelAngelJara
#atomic vector
vector_numerico<- c(1,2,3,4,5,6)
vector_character<- c("a","b","c","d","e","f")
vector_logical<- c(T,F,T,F,F,T)

class(vector_numerico)
class(vector_character)

#coercion
Vector_nuevo<-c(1,2,3,4,"a")
class(Vector_nuevo)
#TRUE = 1
#FALSE = 0

#Matriz  #nrow = nuemro de filas  #byrow=cambiar psicion de columnas
matrix(vector_numerico)
matrix(vector_numerico, nrow= 2)
matrix(vector_numerico, nrow= 2, byrow= T)

install.packages("raster") #instalar la libreria
library(raster)  #cargar la libreria

matriz_ejemplo<-matrix(vector_numerico, nrow= 2, byrow= T)
class(matriz_ejemplo)

raster_ejemplo<-raster(matriz_ejemplo)
class(raster_ejemplo)
plot(raster_ejemplo)

1:900
vector_900<- 1:900
matriz_ejemplo_2<-matrix(vector_900, nrow= 30, byrow= T)
raster_ejemplo_2<-raster(matriz_ejemplo_2)
plot(raster_ejemplo_2)


matriz_ejemplo_3<-round(rnorm(900, mean = 50, sd=20))
matriz_ejemplo_3<- matrix(matriz_ejemplo_3, nrow= 30, byrow= T)
raster_ejemplo_3<-raster(matriz_ejemplo_3)
plot(raster_ejemplo_3)

##factores
Vector_nombres<-c("ed","del","va","va","ro","ro")
length(Vector_nombres)
factor(Vector_nombres)

factor_nombres<- factor(Vector_nombres)
levels(factor_nombres)

##Data frame
df<-data.frame(vector_numerico,
           vector_character,
           vector_logical)

df<-data.frame(cursos= c("bio"."foto","eco","ocea","progra"), 
               horas= c(4,3,4,6,5))
df

curso_ejemplos<-c("bio","foto","eco","ocea","progra")
curso_horas<-c(4,3,5,6,2)
df2<-data.frame(curso_ejemplos, curso_horas)
df2

install.packages("readxl")
library(readxl)
read_excel("C:/Users/Gamer/Desktop/Libro12.xlsx")
cosas_excel<-readxl::read_xlsx("Libro12.xlsx")
#Operadores Logicos
x<-c(1,2,3,4)
x>1
x!=3
c(3,4,5,6) &in&C(2,3,4)
x
x<2 & x==4 
x<2 |x==4
!(x<2 & x==4 )

!TRUE
##Consultas logicas
install.packages("tidyverse")
library(tidyverse)
diamonds
class(diamonds)
x_ceros<-diamonds$x == 0
diamonds[x_cero,]
##sabset
x<-c(.1, 4.2, 3.3, 5.4)
x[1]
x[length(x)]  ## me da el ultimo elemento
x[c(1,2)] #agarra al primero y segundo
x[-c(2,3)] # todos menos el segundo y el tercero
x[x>3]
x[c(TRUE,TRUE,FALSE,FALSE)]
x<-round(rnorm(100, mean=80, sd=20))
x[x>100]
x[!(x<50 | x>100)]


curso_ejemplos<-c("bio","foto","eco","ocea","progra")
curso_horas<-c(4,3,5,6,2)
df2<-data.frame(curso_ejemplos, curso_horas)
df2  
df2$curso_horas
df2$curso_ejemplos
df2[df2$curso_horas>3,]

df2[df2$curso_ejemplos=="eco",]

install.packages("iris")
iris
head(iris)
length(iris)
nrow(iris)
ncol(iris)
glimpse(iris)
iris[iris$Sepal.Length>5,]
nrow(iris[iris$Sepal.Length>5,])
iris[iris$Species =="virginica",]
nrow(iris[iris$Species =="virginica",])
iris[iris$Species =="setosa" & iris$Sepal.Length<3,]

#promedio de todas las long de petalos de virginica
iris[iris$Species=="virginica",]$Petal.Length
mean(iris[iris$Species=="virginica",]$Petal.Length)
mean(iris[iris$Species=="setosa",]$Petal.Length)

min(iris[iris$Species=="setosa",]$Petal.Length)
max(iris[iris$Species=="setosa",]$Petal.Length)
#se puden hacer sd, entre otros

#normalizar os datos
##(x-media)sd 
iris$Sepal.Width-mean(iris$Sepal.Width)/sd(iris$Sepal.Width)

install.packages("data/earthquakes.csv")
library(data/earthquakes.csv)
#cantidad de fila nrow(),cantidad de columnas ncol()


pobreza<-read.csv("https://raw.githubusercontent.com/ryali93/ProgramacionR/master/data/pobreza_extrema.csv", sep=";")
head(pobreza)
pobreza$Incidencia==0

sum(pobreza$Incidencia==0, na.rm= TRUE)
pobreza_incidencia_0<-pobreza[pobreza$Incidencia==0,]
na.omit(pobreza_incidencia_0)
pobreza_incidencia_0<-na.omit(pobreza_incidencia_0)

{r}
a_cir<-function(r,R){A<-pi*(R^2-r^2)}return(A)}

m<- 1:10
n<- 10:1
rev(m)
rev(n)
