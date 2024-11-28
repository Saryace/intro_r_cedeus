
# Usamos la funcion tibble ------------------------------------------------

info_ciudades <- 
tibble(
  poblacion_ciudades <- c(6903479, 971285, 320816), # numeros <dbl> <num>
  lista_ciudades <- c("Santiago", "Concepcion", "Valparaiso"), # <chr>
  gentilicio = c("Santiaguino", "Penquista", "Porteño"),
  cod_postal = c(3580000,3349001,2340000)
)

# En R, las tablas tipo hoja de cálculo se llaman "tibbles" o "data frames".
# Esto las distingue de las matrices y arrays, que son otro tipo de tablas. 

?data_frame

# Esto significa que han sido sustituidas por nuevas funciones o que ya no están soportadas,
# y pueden ser eliminadas de futuras versiones. Todo el código que utilice las funciones
# debe convertirse para utilizar su sustituto, si existe.


# Usos de tibble e importar datos -----------------------------------------

# datos reales debemos importar
# Construir conjuntos de datos de juguetes sencillos para solucionar problemas 


# Debugear ----------------------------------------------------------------

tibble(
  poblacion_ciudades <- c(6903479, 971285, 320816), # numeros <dbl> <num>
  lista_ciudades <- c("Santiago" "Concepcion", "Valparaiso"), # <chr>
  gentilicio = c("Santiaguino", "Penquista", "Porteño"),
  cod_postal = c(3580000,3349001,2340000)
)

# Debugear ----------------------------------------------------------------

tibble(
  poblacion_ciudades <- c(6903479, 971285, 320816), # numeros <dbl> <num>
  lista_ciudades <- c("Santiago", "Concepcion", "Valparaiso"), # <chr>
  gentilicio = c("Santiaguino", "Penquista", "Porteño"),
  cod_postal = c(3580000,3349001)
)

# Debugear ----------------------------------------------------------------

tibble(
  poblacion_ciudades <- c(6903479, 971285, 320816), # numeros <dbl> <num>
  lista_ciudades <- c("Santiago", "Concepcion", "Valparaiso"), # <chr>
  gentilicio = c("Santiaguino", "Penquista", "Porteño"),
  cod_postal = 111111
)

#principio reciclaje: se repite el vector de tamaño 1


