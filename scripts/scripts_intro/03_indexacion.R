
# Vectores ----------------------------------------------------------------

# revisemos diferencias

poblacion_ciudades_named

poblacion_ciudades

# Sintaxis para index -----------------------------------------------------

poblacion_ciudades_named[2]

poblacion_ciudades[2]

# pregunta ----------------------------------------------------------------

# que pasaria si:

poblacion_ciudades(2) 

# Vectores e index --------------------------------------------------------

poblacion_ciudades[c(1, 2)]

poblacion_ciudades[c(3, 4, 5)] # NA datos ausentes

# Indexacion por nombre ---------------------------------------------------

poblacion_ciudades_named["Santiago"]

poblacion_ciudades["Santiago"] # diferencia?

# Cambiar valores objeto con index ----------------------------------------

poblacion_ciudades["Santiago"] <- 7000000

poblacion_ciudades_named["Santiago"] <- 7000000

# Juguemos! ---------------------------------------------------------------

# hubo un error y Santiago tiene ahora 500000 extras

poblacion_ciudades_named["Santiago"] <- 7000000 + 500000



