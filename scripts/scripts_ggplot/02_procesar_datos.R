# Primer paso, mirar los datos --------------------------------------------

accidentes %>% #pipe
  glimpse() # echar un vistazo

accidentes %>% 
  summary() # darnos estadistica descriptiva

# Diferencia R base y tidyverse -------------------------------------------
# head nos muestra por defecto las 6 primeras filas en la consola

head(accidentes) # r base

accidentes %>% # tidyverse
  head()

# Para hacer analisis de datos necesitamos:
# Datos + preguntas

# Queremos hacer analisis por especies y sexo -----------------------------

# funcion count() cuenta por columna elegida

accidentes %>% 
  count(Comuna) 

accidentes %>% 
  count(Tipo_Calza) 

accidentes %>% 
  count(Region,Comuna) 


# Primero algo de seudocodigo ---------------------------------------------
# Mi pregunta es caracterizar las comunas en base a sus accidentes con fallecidos

accidentes_limpios <-
  accidentes %>%
  mutate( # creo la categoria grande y pequeño
    fatalidad_accidente = case_when(
      Fallecidos >= 1 ~ "Con fatalidades",
      Fallecidos == 0 ~ "Sin fatalidades"
    )
  ) 


# Unir dos datasets (join) ------------------------------------------------

# La pobreza e inseguridad alimentaria estan en dos dataset
# Podemos unirlos si tenemos una comuna comun


pobreza_inseguridad <- left_join(
  pobreza_multidimensional,
  inseguridad_alimentaria,
  join_by(Código, Región, `Nombre comuna`)
) %>%
  clean_names() %>%
  mutate(
    pobreza_porc = numero_de_personas_en_situacion_de_pobreza_multidimensional /
      numero_de_personas_segun_proyecciones_de_poblacion,
    inseguridad_porc = as.numeric(porcentaje_de_hogares_que_experimentan_inseguridad_alimentaria_moderada_severa
  ))


