Tarea\_progra
================
Miguel Jara
12/7/2021

# Ejercicios

## 1.- **Calcula los valores numéricos aproximados de:**

1.  $\\frac{0.3 \\cdot 0.5}{0.3 \\cdot 0.15 + 0.2 \\cdot 0.8 + 0.5 \\cdot 0.12}$

``` r
(0.3*0.5)/((0.3*0.15)+(0.2*0.8)+(0.5*0.12))
```

    ## [1] 0.5660377

2.  $\\frac{5^6}{6!} e^{-5}$

``` r
e<-2.718
(5^6)*(e^(-5))/(factorial(6))
```

    ## [1] 0.1462986

3.  $\\begin{pmatrix} 20 \\\\ 7 \\end{pmatrix} 0.4^7 0.6^{13}$

``` r
Combinatorio<- function(n,r){
  factorial(n)/(factorial(r)*factorial(n-r))
}

(Combinatorio(20,7))*(0.4^7)*(0.6^13)
```

    ## [1] 0.1658823

## 2.- **Realizar la siguiente suma**

1.  1 + 2 + 3+…+1000

``` r
s<-c(1:1000)
sum(s)
```

    ## [1] 500500

2.  1 + 2 + 4 + 8 + 16 + …+ 1024

``` r
s<-c(1,2,4,8,16,32,64,128,256,512,1024)
sum(s)
```

    ## [1] 2047
