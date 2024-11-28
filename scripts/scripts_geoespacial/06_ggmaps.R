
# Libreria ggmap ----------------------------------------------------------

library(ggmap)
library(ggspatial) #mapas
library(osmdata) #mapas


# ggmap -------------------------------------------------------------------
# la funcion qmplot es una forma facil de mostrar puntos

ggmap::qmplot(lon, lat, data = monumentos,
              maptype = "stamen_toner_lite", color = I("red"))



# Los 10 mas antiguos -----------------------------------------------------

ggmap::qmplot(
  lon,
  lat,
  data = monumentos %>%
    mutate(fecha_decreto = dmy(fecha_decreto)) %>%
    arrange(fecha_decreto) %>%
    slice_head(n = 10),
  maptype = "stamen_toner_lite",
  color = I("red")
)


# Usando ggmap ------------------------------------------------------------
# bbox = los border del mapa

bbox <- c(
  left = -70.90,
  bottom = -33.70,
  right = -70.45,
  top = -33.30
)

# usando bbox puedo hacer mi fondo
get_stadiamap(bbox, zoom = 12, maptype = "stamen_terrain")%>%
  ggmap()

# Ciclovias y temperatura -------------------------------------------------
# ciclovias y temperaturas a sf

ciclo_temp <- st_as_sf(temp_data_ciclo %>% filter(!is.na(temp)), 
         coords = c('x', 'y'),
         crs = 4326) # WGS 84



get_stadiamap(bbox, zoom = 12, maptype = "stamen_terrain")%>%
  ggmap() +
  geom_sf(
    data = ciclo_temp,
    aes(color = temp),
    size = 1,
    inherit.aes = FALSE
  ) +
  scale_color_continuous(
    low = "yellow",
    high = "red",
    guide = "colorbar",
    na.value = "transparent"
  ) +
  labs(x = "", y = "", color = "Temperatura ciclovias") +
  annotation_scale(location = "br",
                   bar_cols = c("grey20", "white")) +
  ggtitle("Santiago de Chile") +
  annotation_north_arrow(
    location = "tl",
    which_north = "true",
    style = north_arrow_nautical(fill = c("grey40", "white"),
                                 line_col = "grey20")
  )


