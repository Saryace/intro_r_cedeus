library(ggplot2)
library(sf)


# Cargamos accidentes -----------------------------------------------------

accidentes <-
  read_sf(
    "https://opendata.arcgis.com/datasets/eb4a3814cf6e478e988b7dae38c770de_0.geojson"
  )

# Cargamos paradas --------------------------------------------------------

paradas <-
  read_sf(
    "datos/paradas_transantiago.json"
  )

# Revisamos los objetos ---------------------------------------------------

class(accidentes)

st_crs(paradas) # WGS 84

# Puntos JSON -------------------------------------------------------------

ggplot() +
  geom_sf(data = paradas,
          aes(color = "red"),
          shape = 20) +
  labs(title = "Paradas RED")  

# -------------------------------------------------------------------------

ggplot() +
  geom_sf(data = accidentes,
          aes(colour = Accidentes, size = Accidentes),
          shape = 20) +
  scale_size_continuous(range = c(0.1, 6), limits = c(5, 60)) +
  scale_colour_viridis_c(option = "C", limits = c(5, 60)) +
  labs(title = "Accidentes de Tránsito\nSantiago de Chile") +
  guides(
    colour = guide_legend(title.position = "left"),
    size = guide_legend(title.position = "left")
  ) 






