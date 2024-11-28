
# Análisis Geoespacial ----------------------------------------------------

# que monumentos estan mas expuestas a temperatura en enero?

# Libreria terra ----------------------------------------------------------

library(terra)

# -------------------------------------------------------------------------

#raster
raster_temp_enero <- rast("datos/temp_ene.tif") #diferentes clases de rasters

temp_monumentos <- extract(raster_temp_enero, monumentos_sp)

crs <- st_coordinates(monumentos_sp)
temp_data <- cbind(crs, temp_monumentos)
colnames(temp_data) <- c("x","y","ID","temp")

# Trabajamos como puntos --------------------------------------------------

ggplot(temp_data %>% filter(!is.na(temp)),
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



