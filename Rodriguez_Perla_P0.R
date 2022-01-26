##CARGO MI SECUENCIA 
sec<- readDNAStringSet("first (1).fasta")
sec #visualio mis secuencias concatenadas, ya me aparece la longitud de mis secuencias y mis 
#bases con dierentes colores, ademas de aparecer el nombre de cada una de mis secuencias 

###Elijo 2 problemas:
#Contar nucleotidos 
# Calcular contenido de GC 

###1. PARA CONTAR LOS NUCLEOTIDOS CON LIBRERIA ESPECIALIZADA
alphabetFrequency(sec) 
#esta funcion me permite ver la frecuencia de nucleotidos que aparecen en mis cadenas, a travs de una matriz 

###PARA CONTAR LOS NUCLEOTIDOS SIN LIBRERIA ESECIALIZADA
#La funcion "str_count" cuenta el # de veces que aparece un caracter en una cadena, por lo que 
# usare este comando para encontrar el # de veces que aparecen mis nucelotidos "ATGC" en mis cadenas 
#y posteriormente procedere a llenar una matriz con los resultados 
A<-str_count(sec, "A")# obtengo los resultados de la frecuencia del na "A" en mis 5 cadenas 
t<-str_count(sec, "T") #obtengo los resultados de la frecuencia del na "T" en mis 5 cadenas
G<- str_count(sec, "G")#obtengo los resultados de la frecuencia del na "G" en mis 5 cadenas
C<- str_count(sec, "C")#obtengo los resultados de la frecuencia del na "C" en mis 5 cadenas
#ahora procedo a crear mi matriz (data frame) con los resultados 
matr<- cbind.data.frame(A,t,G,C)
matr #visualizo el resultado, triunfamos UwU 


# Calcular contenido de GC con libreria especializada 
dinucleotideFrequency(sec)
#esta funcion me permite observar la frecuencia de mis dinucleotidos, entre ellos el GC, CG
##tambien puedo optar por letterfrecuency y delimitar mis letras de interes "GC", y obtengo el porcentaje 
#por cadena de mi cintenido de GC 
letterFrequency(sec, "GC", as.prob = TRUE)

##CALCULAR CONTENIDO DE GC SIN LIBRERIA ESPECIALIZADA 
#utilizaré la vieja confiable str_count para buscar la frecuencia de GC en mis secuencias 
GC<-str_count(sec,'(G|C)' )
GC #Visualio las frecuencias por secuencia 

#Para calcular el % creo una funcion que me ayude 
GC_fun<- function (x){ #con esta funcion le digo a R que a cad cadena que ingrese, le cuente las G y C 
  #y posteriormente multiplique esa frecuencia por 100 y el resultado lo divida entre la longitud de la cadena 
  # y asi obtenemos el porcentaje de GC de nuestra secuencia sin tener que escribir lo mismo para todas las cadenas 
  # solo ingresar mi cadena de interes a la funcion 
  str_count(x,'(G|C)' )* 100/length(x)}
GC_fun(sec$secuencia0) #visualizo el % de GC de mi cadena 0 
GC_fun(sec$secuencia1) #visualizo el % de GC de mi cadena 1
GC_fun(sec$secuencia2) #visualizo el % de GC de mi cadena 2 
GC_fun(sec$secuencia3) #visualizo el % de GC de mi cadena 3 
GC_fun(sec$secuencia4) #visualizo el % de GC de mi cadena 4 
# si intento visualizar todas juntas me da un resultado diferente asi que por eso seleccione una x 1 

# TAREA COMPLETADA !
