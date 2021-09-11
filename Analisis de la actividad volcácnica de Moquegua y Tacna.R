# Cargamos las librerias
library(sf)

library(tidyverse)

library(dplyr)

library(mapview)

library(ggplot2)

library(tmap)
# seteamos el directorio trabajo
setwd("C:/Users/Gamer/Desktop/datos")

##Carga los datos
st_read("OTROS VOLCANES INGEMMET GEOCATMIN GEOGPSPERU.shp")

volcan <- st_read("OTROS VOLCANES INGEMMET GEOCATMIN GEOGPSPERU.shp")

dist <- st_read("DISTRITOS.shp")

#MOQUEGUA
#Filtrando datos solo del departamento de Moquegua
volc_moq<-volcan %>%
  
  filter(DEPARTAMEN =="MOQUEGUA")

dist_moq <- dist %>%
  
  filter(DEPARTAMEN == "MOQUEGUA")

#Visualización de los volcanes de Moquegua por distrito
mapview(dist_moq , zcol = "DISTRITO" , 
        
          layer.name = "DISTRITOS DE MOQUEGUA") + 
  
  mapview(st_geometry(volc_moq))

# Visualización por altitud de los volcanes de Moquegua

tm_shape(dist_moq) + tm_symbols()+ tm_layout(frame=T)

tm_shape(dist_moq) + 
  
  tm_polygons(col = "DISTRITO") +
  
  tm_shape(volc_moq)+
  
  tm_bubbles(col = "ALTITUD", size = 0.5)+
  
  tm_layout(frame = T) 

# Relación entre dos variables

ggplot(volc_moq, mapping = aes(x= ELEVACION, y= VOLUMEN, 
                                
                                color = CATEGORIA)) + geom_point() + 
  
  geom_smooth(method = 'lm') +
  
  ggtitle("RELACION ENTRE VOLUMEN Y ELEVACION") +
  
  theme(plot.title = element_text(hjust = 0.5))

# Relación altitud y la actividad volcánica

ggplot(volc_moq, mapping = aes(x= CATEGORIA,   y= ALTITUD,  
                                color = CATEGORIA)) + 
  
 geom_jitter() + 
  
#  geom_smooth(method = 'lm') +
  
  ggtitle("RELACION DE ALTITUD Y ACTIVIDAD VOLCANICA")+
  
  theme(plot.title = element_text(hjust = 0.5))



#TACNA
## #Filtrando datos solo del departamento de Tacna
volc_tac<-volcan %>%
  
  filter(DEPARTAMEN =="TACNA")

dist_tac <- dist %>%
  
  filter(DEPARTAMEN == "TACNA")

#Visualización de los volcanes de TACNA por distrito
mapview(dist_tac , zcol = "DISTRITO" , 
        
        layer.name = "DISTRITOS DE TACNA") + 
  
  mapview(st_geometry(volc_moq))

# Visualización por altitud de los volcanes de TACNA
tm_shape(dist_tac) + tm_symbols()+ tm_layout(frame=T)

tm_shape(dist_tac) + 
  
  tm_polygons(col = "DISTRITO") +
  
  tm_shape(volc_moq)+
  
  tm_bubbles(col = "ALTITUD", size = 0.5)+
  
  tm_layout(frame = T) 

# Relación entre dos variables

ggplot(volc_tac, mapping = aes(x= ELEVACION, y= VOLUMEN, 
                               
                               color = CATEGORIA)) + geom_point() + 
  
  geom_smooth(method = 'lm') +
  
  ggtitle("RELACION ENTRE VOLUMEN Y ELEVACION") +
  
  theme(plot.title = element_text(hjust = 0.5))

# Relación altitud y la actividad volcánica

ggplot(volc_tac, mapping = aes(x= CATEGORIA,   y= ALTITUD,  
                               color = CATEGORIA)) + 
  
  geom_jitter() + 
  
  #  geom_smooth(method = 'lm') +
  
  ggtitle("RELACION DE ALTITUD Y ACTIVIDAD VOLCANICA")+
  
  theme(plot.title = element_text(hjust = 0.5))

