
# Datos -------------------------------------------------------------------

# para combinar datos se usa la funcion c()

ciudad_1 <- "Santiago"
  
ciudad_2 <- "Concepción"

ciudad_3 <- "Valparaíso"

ciudades <- ciudad_1 + ciudad_2 + ciudad_3 # error

ciudades <- c(ciudad_1, ciudad_2,ciudad_3) # ok!

# vectores  ---------------------------------------------------------------

poblacion_ciudades <- c(6903479, 971285, 320816)

nombres_ciudades <- c("Santiago", "Concepción", "Valparaíso")

# Vectores and estadistica ------------------------------------------------

# Muchas funciones en R toman un vector como entrada y devuelven
# valor que resume el vector como salida.

mean(c(6903479, 971285, 320816)) #cualquier valor

mean(poblacion_ciudades)

mean(6903479, 971285, 320816)# NO TIENE SENTIDO

# promedio, minimo , max 

max(poblacion_ciudades)

# Juguemos! ---------------------------------------------------------------

# El último censo de población y vivienda realizado fue en 2017.
# Sus resultados indican que la población efectivamente censada
# llegó a un total de 17.574.003 personas.
# De ellas, 8.601.989 (48,9%) son hombres y 8.972.014 (51,1%), mujeres.

poblacion_mujeres_ciudades <- poblacion_ciudades * 0.511
  
# Tipos de funciones ------------------------------------------------------

# En general, las funciones de R se dividen en tres grupos:
 
# Funciones de resumen -  toman un vector de entrada y devuelven
# un único número.

# Funciones vectorizadas - toman un vector de entrada, trabajan en sus
# elementos en paralelo y devuelven un vector de salida.

# Otras funciones -  hacen algo especial o no están escritas
# para utilizar vectores.


# Vectores con nombre -----------------------------------------------------

poblacion_ciudades_named <- c(Santiago = 6903479,
                              Concepcion = 971285,
                              Valparaiso = 320816)

poblacion_ciudades_named * 0.551 # estimado mujeres por ciudad
