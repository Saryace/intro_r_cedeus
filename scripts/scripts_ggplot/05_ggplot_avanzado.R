
# Ejemplo avanzado --------------------------------------------------------

# Seleccionar 3 regiones
# Calcular asociacion entre pobreza e inseguridad
# Comparar si hay diferencias significativas entre regiones y metropolitana

# -------------------------------------------------------------------------

library(ggpmisc) # para ecuacion
library(ggsignif) # para significancia
library(patchwork) # para unir figuras

orden_regiones <- c('Metropolitana', 'Tarapacá', 'Magallanes') 

fig_1 <- 
pobreza_inseguridad %>% 
  filter(region %in% c("Metropolitana", "Magallanes", "Tarapacá")) %>% 
  drop_na() %>% 
  ggplot(mapping = aes(x = pobreza_porc, y = inseguridad_porc)) +
  geom_smooth(method = "lm") +
  stat_poly_eq(use_label(c("eq", "R2", "P"))) +
  geom_point() +
  labs(x= "Pobreza multidimensional (%)", y = "Inseguridad alimentaria (%)") +
  theme_bw()

fig_2 <- 
  pobreza_inseguridad %>% 
  filter(region %in% c("Metropolitana", "Magallanes", "Tarapacá")) %>% 
  drop_na() %>% 
  ggplot(mapping = aes(x = pobreza_porc, y = inseguridad_porc, color = region)) +
  geom_smooth(method = "lm") +
  stat_poly_eq(use_label(c("eq", "R2", "P"))) +
  geom_point() +
  labs(x= "Pobreza multidimensional (%)", y = "Inseguridad alimentaria (%)") +
  theme_bw()

fig_3 <- 
pobreza_inseguridad %>% 
  filter(region %in% c("Metropolitana", "Magallanes", "Tarapacá")) %>% 
  drop_na() %>% 
  ggplot(mapping = aes(x = factor(region,
                                  level = orden_regiones),
                       y = pobreza_porc, fill = region)) +
  geom_boxplot() +
  geom_signif(
    comparisons = list(c("Metropolitana", "Magallanes"),
                       c("Metropolitana", "Tarapacá")),
    map_signif_level = TRUE, textsize = 3,
    step_increase = 0.1
  ) +
  labs(x = NULL, y = "Pobreza multidimensional (%)") +
  theme_bw()

fig_4 <- 
  pobreza_inseguridad %>% 
  filter(region %in% c("Metropolitana", "Magallanes", "Tarapacá")) %>% 
  drop_na() %>% 
  ggplot(mapping = aes(x = factor(region,
                                  level = orden_regiones),
                       y = inseguridad_porc, fill = region)) +
  geom_boxplot() +
  geom_signif(
    comparisons = list(c("Metropolitana", "Magallanes"),
                       c("Metropolitana", "Tarapacá")),
    map_signif_level = TRUE, textsize = 3,
    step_increase = 0.1
  ) +
  labs( x= NULL, y = "Inseguridad alimentaria (%)") +
  theme_bw()

plot_combinado <- (fig_1 + fig_2) / (fig_3 + fig_4)

plot_final <- 
plot_combinado + plot_annotation(tag_levels = c('A', '1'), tag_prefix = 'Fig. ',
                            tag_sep = '.', tag_suffix = ':')


ggsave("figuras/plot_final.png", #directorio
       plot_final, #objeto
       dpi = 300,
       device = "tiff")