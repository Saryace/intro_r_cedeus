
# chr, strings ------------------------------------------------------------

# Cualquier secuencia de caracteres se convierte strings entre comillas

regiones_chile <- c(V, RM, VI, VII)

regiones_chile <- c("V", "RM", "VI", "VII")

regiones_chile <- c(5, 13, 6, 7)

regiones_chile <- c("V", 13, "VI", "VII")

# MUY IMPORTANTE ----------------------------------------------------------

# Un vector sólo puede contener un tipo de datos.
# Si combinamos números y strings, R convertirá los números en strings.
# La coerción es la conversión implicita de valores de un tipo de dato a otro 

# Como R reconoce los strings ---------------------------------------------

# ejercicio: correr lineas 24 a 30 ----------------------------------------

regiones_chile <- c("V", 13, "VI", "VII")

regiones_chile[2]

regiones_chile[3]

regiones_chile[2] > regiones_chile[3] # R opera chr alfabeticamente

# ejercicio: correr lineas 34 a 36 ----------------------------------------

regiones_chile <- c(5, 13, 6, 7)

regiones_chile[2] > regiones_chile[3] 


