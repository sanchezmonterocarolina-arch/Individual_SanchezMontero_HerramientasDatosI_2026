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
  labs(
    title = "Incidencia de lesiones del LCA en fútbol",
    subtitle = "Comparación según sexo y nivel competitivo",
    x = "Nivel competitivo",
    y = "Tasa de incidencia por 1000 exposiciones",
    fill = "Sexo"
  ) +
  theme_minimal() +
  theme(
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