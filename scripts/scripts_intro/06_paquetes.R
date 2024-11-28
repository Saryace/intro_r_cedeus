
# Como instalar un paquete ------------------------------------------------

# install.packages("tidyverse") revisar si lo tienen

# install.packages(c("paquete1","paquete2")) cargar dos paquetes a la vez

# se hace solo una vez, luego si se pueden actualizar

# como saber que version del paquete? -------------------------------------

sessionInfo()

# cargar paquetes ---------------------------------------------------------

library(tidyverse)

# Ver mensajes consola ----------------------------------------------------

sessionInfo()

# Los paquetes tienen datasets --------------------------------------------

MASS::select()

dplyr::select()

# Hay funciones en paquetes diferentes con el mismo nombre ----------------

library(MASS)

select(....) # va a ocupar select de MASS!


# Casos complicados -------------------------------------------------------

library(MASS)
library(dplyr)

dplyr::select(...) #me aseguro que uso el select de dplyr

billboard 

tidyr::

tidyr::world_bank_pop


