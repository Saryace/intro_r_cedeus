
# Usemos world_bank_pop ---------------------------------------------------

library(tidyverse)

tidyr::world_bank_pop

# Primero inspeccionemos

ncol(world_bank_pop)
nrow(world_bank_pop)

# View and glimpse --------------------------------------------------------

View(world_bank_pop)

glimpse(world_bank_pop)

# head and tail -----------------------------------------------------------

head(world_bank_pop, n = 7) # argumentos, de que paquete?

?head

#head tiene como argumento por defecto 6, esto lo puedo cambiar

# summary -----------------------------------------------------------------

summary(world_bank_pop)
