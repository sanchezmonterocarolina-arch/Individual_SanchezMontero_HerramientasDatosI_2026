#| echo: false
#| fig-width: 6
#| fig-height: 3.5
#| out-width: "80%"
#| fig-align: center

grafico.soccer <- ggplot(
  soccer.caso,
  aes(
    x = nivel.agrupado,
    y = tasa.incidencia,
    fill = sexo
  )
) +
  geom_col(
    position = "dodge"
  ) +
  scale_fill_manual(
    values = c(
      "hombre" = "#659681", 
      "mujer" = "#A17DB5")
  ) +
  labs(
    title = "Gráfico 4. Incidencia de lesiones del LCA en fútbol",
    subtitle = "Comparación según sexo y nivel competitivo",
    x = "Nivel competitivo",
    y = "Tasa de incidencia por 1000 exposiciones",
    fill = "Sexo",
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
    plot.title = element_text(size = 14, face = "bold"),
    axis.title = element_text(size = 12),
    axis.text = element_text(size = 10)
  )

ggsave(
  filename = "res/graficos/incidencia_futbol.png",
  plot = grafico.soccer,
  width = 6,
  height = 3.5,
  units = "in",
  dpi = 300
)