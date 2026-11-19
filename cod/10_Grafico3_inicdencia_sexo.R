#| echo: false
#| fig-width: 6
#| fig-height: 3.5
#| out-width: "80%"
#| fig-align: center

grafico.sexo <- ggplot(
  incidencia.sexo,
  aes(
    x = sexo,
    y = tasa.incidencia,
    fill = sexo
  )
) +
  geom_col() +
  scale_fill_manual(
    values = c(
      "hombre" = "#659681", 
      "mujer" = "#A17DB5")
  ) +
  labs(
    title = "Gráfico 3. Incidencia de lesiones del LCA según sexo",
    x = "Sexo",
    y = "Tasa de incidencia por 1000 exposiciones",
    caption = paste(
      "Fuente: elaboración propia a partir de",
      "Beynnon et al. (2014) y Montalvo et al. (2019)."
    )
  ) +
  theme_minimal() +
  theme(
    plot.caption = element_text(
      size = 8,
      hjust = 1,
      color = "grey40"
    ),
    plot.title = element_text(size = 12, face = "bold"),
    axis.title = element_text(size = 10),
    axis.text = element_text(size = 8),
    legend.position = "none"
  )


ggsave(
  filename = "res/graficos/incidencia_sexo.png",
  plot = grafico.sexo,
  width = 6,
  height = 3.5,
  units = "in",
  dpi = 300
)