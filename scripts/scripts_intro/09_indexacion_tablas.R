
# Indexacion en tablas ----------------------------------------------------

# notación [i, j]
# Podemos obtener valores de un tibble:
# 
# el primer índice para encontrar la fila del valor y
# el segundo índice para encontrar la columna del valor.


info_ciudades <- 
  tibble(
    poblacion_ciudades = c(6903479, 971285, 320816), # numeros <dbl> <num>
    lista_ciudades = c("Santiago", "Concepcion", "Valparaiso"), # <chr>
    gentilicio = c("Santiaguino", "Penquista", "Porteño"),
    cod_postal = c(3580000,3349001,2340000)
  )

info_ciudades[2,2]

info_ciudades[c(1,2),c(1,2)]

# Doble [] ----------------------------------------------------------------

info_ciudades["cod_postal"] # tibble 3 x 1

info_ciudades[["cod_postal"]] # vector


# Uso [] y [[]] -----------------------------------------------------------

sd(info_ciudades["poblacion_ciudades"]) # no es un vector

mean(info_ciudades["poblacion_ciudades"]) # no es un vector

sd(info_ciudades[["poblacion_ciudades"]]) # si va a correr :) 

mean(info_ciudades[["poblacion_ciudades"]]) # equivalente a $

# Signo peso --------------------------------------------------------------

sd(info_ciudades$poblacion_ciudades)

mean(info_ciudades$poblacion_ciudades)



