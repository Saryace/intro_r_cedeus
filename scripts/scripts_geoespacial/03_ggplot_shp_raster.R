
# librerias ---------------------------------------------------------------

library(raster)

# Leer shapes -------------------------------------------------------------

ciclovias <- read_sf("datos/ciclovias/ciclovias.shp")
st_crs(ciclovias)

# Leer raster -------------------------------------------------------------

temp_enero <- stack("datos/temp_ene.tif")

temp_enero_df <- as.data.frame(temp_enero, xy=TRUE) #raster a df

# Ahora con geom_sf -------------------------------------------------------

ggplot() +
  geom_sf(data = ciclovias,
          aes(color = "red"),
          shape = 20) +
  labs(title = "Ciclovias")

# geom_raster -------------------------------------------------------------

temp_enero_df %>%
  ggplot() +
  geom_raster(aes(x = x, y = y, fill = temp_ene)) +
  scale_fill_continuous(low="yellow", high="red", 
                        guide="colorbar",na.value="transparent")
