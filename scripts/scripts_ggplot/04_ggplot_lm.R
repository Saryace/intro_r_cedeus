
# ggplot para boxplot -----------------------------------------------------

pobreza_inseguridad %>% 
  ggplot(mapping = aes(x = region, y = pobreza_porc)) +
  geom_boxplot() # outliers, percentiles y promedios

?geom_boxplot


# outliers, percentiles y promedios

# Selecciono dos graficos y los arreglo un poco ---------------------------
# los ggplots pueden guardarse como objeto

pobreza_vs_inseg <- 
  pobreza_inseguridad %>% 
  ggplot(mapping = aes(x = pobreza_porc, y = inseguridad_porc, color = region)) +
  geom_point() +
  labs(x= "Pobreza multidimensional", y = "Inseguridad alimentaria") +
  theme_bw()

pobreza_vs_inseg 

# como guardo mi plot? ----------------------------------------------------

ggsave("figuras/plot_pobreza_vs_inseg.png", #directorio
       pobreza_vs_inseg) #objeto

