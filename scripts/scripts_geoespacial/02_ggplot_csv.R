# Desde un CSV ------------------------------------------------------------
# Debemos saber las coordenadas!!!!

monumentos <- read_csv("datos/monumentos.csv")

monumentos_sp <- st_as_sf(monumentos, 
                          coords = c('lon', 'lat'),
                          crs = 4326) # WGS 84

# Ahora con geom_sf -------------------------------------------------------

ggplot() +
  geom_sf(data = monumentos_sp,
          aes(color = "red"),
          shape = 20) +
  labs(title = "Monumentos")


# -------------------------------------------------------------------------

# me conviene primero preparar csv y despues a sf

monumentos %>% 
  mutate(fecha_decreto = dmy(fecha_decreto)) %>% 
  arrange(fecha_decreto) %>% 
  slice_head(n = 10)


