# Repaso sintaxis ---------------------------------------------------------

# Usando vectores ---------------------------------------------------------

ggplot(mapping = aes(x = accidentes_limpios$Tipo__CONA,
                     y = accidentes_limpios$Tipo_Calza)) +
  geom_point()

# Sin usar mapping = ------------------------------------------------------

# ggplot(datos, mapping) # orden de los argumentos
# Algunos participantes les funciono, a otro no

# En la version de la profesora no funciono =( ----------------------------

# ggplot(aes(x = accidentes_limpios$mass_kg,
#                      y = accidentes_limpios$flipper_length_mm)) +
#   geom_point()

# Usando argumento data ---------------------------------------------------

ggplot(data = accidentes_limpios,
       mapping = aes(x = Tipo__CONA, y = Tipo_Calza)) +
  geom_point()

# Sin detallar data y mapping ---------------------------------------------

ggplot(accidentes_limpios,
       aes(x = Tipo__CONA, y = Tipo_Calza)) +
  geom_point()

# Tercera forma, tidyverse ------------------------------------------------

accidentes_limpios %>% 
  ggplot(mapping = aes(x = Tipo__CONA, y = Tipo_Calza)) +
  geom_point()


# Cada geom es distinto y tiene diferentes argumentos

accidentes_limpios %>%
  ggplot(mapping = aes(x = Tipo__CONA, y = Tipo_Calza)) +
  geom_bar() # veamos el error

accidentes_limpios %>%
  ggplot(mapping = aes(x = Tipo__CONA)) +
  geom_bar() # hace un conteo

# comparemos geom_col vs geom_bar -----------------------------------------

accidentes_limpios %>%
  ggplot(mapping = aes(x = Tipo__CONA, y = Tipo_Calza)) +
  geom_col()

?geom_col

