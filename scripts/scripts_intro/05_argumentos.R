
# Para orden, creamos objetos nuevamente ----------------------------------

poblacion_ciudades <- c(6903479, 971285, 320816)

poblacion_ciudades_named <- c(Santiago = 6903479,
                              Concepcion = 971285,
                              Valparaiso = 320816)

lista_ciudades <- c("Santiago", "Concepcion", "Valparaiso")

# Argumentos de una funcion -----------------------------------------------

toupper(lista_ciudades) #que hace?

paste(lista_ciudades, "-Chile") # sep por defecto es espacio

paste(lista_ciudades, "-Chile", sep = "") #sep es un args

# Importante --------------------------------------------------------------

# Cada función en R está escrita para reconocer su propio conjunto de nombres de argumentos.
# Hay funciones con argumentos por defecto (tidyverse:head, 07_tablas_datasets)
# Siempre ver la ayuda

?paste

# Juguemos ----------------------------------------------------------------

# Necesito estimar pob mujeres por ciudad y redondear con 1 digito

poblacion_ciudades * 0.511

?round

round(poblacion_ciudades * 0.511) # puedo operar dentro

round(poblacion_ciudades,  digits = 1) * 0.511  # revisen 

round(poblacion_ciudades * 0.511, digits = 1)  # revisen

# Otra opcion

estimado_mujeres <- poblacion_ciudades * 0.511

round(estimado_mujeres, digits = 1)

# Como R lee los argumentos -----------------------------------------------

# R comparará cada entrada con nombre con el nombre del argumento al que está asignada.

# A continuación, R comparará las entradas sin nombre por posición.

# Ejemplo round(x, digits = integer)

?round

round(x = estimado_mujeres, digits = 3) 

round(digits = 1, x = estimado_mujeres) 

round(estimado_mujeres, 1) 

# error ya que no hay nombre de argumento y el orden es incorrecto
round(estimado_mujeres) 



# Argumentos con pipes ----------------------------------------------------

"|> pipe nativo Rbase" 

"%>%  tidyverse"

estimado_mujeres |>
  round(1)


