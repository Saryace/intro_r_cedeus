# Análisis Geoespacial ----------------------------------------------------

# que ciclovias estan mas expuestas a temperatura en enero?

# Libreria terra ----------------------------------------------------------

library(terra)
# -------------------------------------------------------------------------

#raster
raster_temp_enero <- rast("datos/temp_ene.tif") #diferentes clases de rasters

ciclovias <- read_sf("datos/ciclovias/ciclovias.shp")

ciclovias$geometry # comparar con monumentos

ciclovias_puntos <- st_cast(ciclovias, "POINT")

temp_ciclovias <- extract(raster_temp_enero, ciclovias_puntos)

crs <- st_coordinates(ciclovias_puntos)
temp_data_ciclo <- cbind(crs, temp_ciclovias)
colnames(temp_data_ciclo) <- c("x","y","ID","temp")

# Trabajamos como puntos --------------------------------------------------

ggplot(temp_data_ciclo %>% filter(!is.na(temp)),
       aes(x = x, y = y)) +
  geom_point(aes(color = temp)) +
  scale_color_continuous(
    low = "yellow",
    high = "red",
    guide = "colorbar",
    na.value = "transparent"
  ) +
  theme_minimal() +
  labs(title = "",
       x = "Lon", y = "Lat")



