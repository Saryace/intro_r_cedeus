# Cargar las librerias ----------------------------------------------------

library(tidyverse) # incluye ggplot2
library(sf) # leer geojson

# Cargar datos ------------------------------------------------------------
# Accidentes de tránsito en Santiago de Chile
# Datos: Comisión Nacional de Seguridad de Tránsito y CEDEUS

accidentes <-
  read_sf(
    "https://opendata.arcgis.com/datasets/eb4a3814cf6e478e988b7dae38c770de_0.geojson"
  )

# -------------------------------------------------------------------------

pobreza_multidimensional <-
  read_excel("datos/Estimaciones_Indice_Pobreza_Multidimensional_Comunas_2022.xlsx")

inseguridad_alimentaria <-
  read_excel("datos/Estimacion_Inseguridad_Alimentaria_Comunal_2022.xlsx")

#miremos los objetos cargados 

# -------------------------------------------------------------------------
# usando funciones podemos cargas los datos mas limpios directo

pobreza_multidimensional <-
  read_excel("datos/Estimaciones_Indice_Pobreza_Multidimensional_Comunas_2022.xlsx",
             skip = 2,
             n_max = 345) %>% 
  select(1:5)

inseguridad_alimentaria <-
  read_excel("datos/Estimacion_Inseguridad_Alimentaria_Comunal_2022.xlsx",
             skip = 2,
             n_max = 345) %>% 
  select(1:4)
