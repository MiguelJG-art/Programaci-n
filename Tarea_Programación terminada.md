---
title: "Tarea de programación"
author: "Miguel Jara"
date: "12/7/2021"
output: github_document
---

# Ejercicios
## 1.- **Calcula los valores numéricos aproximados de:**

a. $\frac{0.3 \cdot 0.5}{0.3 \cdot 0.15 + 0.2 \cdot 0.8 + 0.5 \cdot 0.12}$
```{r}
(0.3*0.5)/((0.3*0.15)+(0.2*0.8)+(0.5*0.12))
```

b. $\frac{5^6}{6!} e^{-5}$
```{r}
e<-2.718
(5^6)*(e^(-5))/(factorial(6))
```

c. $\begin{pmatrix} 20 \\ 7 \end{pmatrix} 0.4^7 0.6^{13}$
```{r}
Combinatorio<- function(n,r){
  factorial(n)/(factorial(r)*factorial(n-r))
}

(Combinatorio(20,7))*(0.4^7)*(0.6^13)
```

## 2.- **Realizar la siguiente suma**

a. 1 + 2 + 3+...+1000 
```{r}
s<-c(1:1000)
sum(s)
```

b. 1 + 2 + 4 + 8 + 16 + ...+ 1024
```{r}
s<-c(1,2,4,8,16,32,64,128,256,512,1024)
sum(s)
```





