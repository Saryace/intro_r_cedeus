
# Importar datos con tidyverse --------------------------------------------

library(tidyverse)
library(readr) # se carga con tidyverse
library(readxl) # hay que cargarla siempre

# se puede usar el boton "import dataset" ---------------------------------
# este es el codigo que usa RStudio
datos_colab <- read_excel("datos/datos_comunas_colab.xlsx")
View(datos_colab)

# Dos funciones para cargar los datos csv ---------------------------------

datos_colab_csv <- read_csv("datos/datos_comunas_colab.csv") #directorio relativo

datos_colab.csv <- read.csv("datos/datos_comunas_colab.csv")

# Diferentes funciones pueden hacer lo mismo pero -------------------------
# Esto da error porque read.csv =/= read_csv
datos_colab_csv <- read.csv("datos_colab.csv",
                      n_max = 100) # no todas las f() tiene el mismo args


