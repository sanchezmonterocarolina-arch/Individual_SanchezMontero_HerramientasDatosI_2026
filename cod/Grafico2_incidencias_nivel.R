#| echo: false
#| fig-width: 6
#| fig-height: 3.5
#| out-width: "80%"
#| fig-align: center

grafico.nivel <- ggplot(
  incidencia.nivel,
  aes(
    x = reorder(nivel.agrupado, -tasa.incidencia),
    y = tasa.incidencia
  )
) +
  geom_col(fill = "#79A88B") +
  labs(
    title = "Gráfico 2. Incidencia de lesiones del LCA según nivel competitivo",
    x = "Nivel competitivo",
    y = "Tasa de incidencia por 1000 exposiciones"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(size = 12, face = "bold"),
    axis.title = element_text(size = 12),
    axis.text = element_text(size = 10)
  )

ggsave(
  filename = "res/graficos/incidencia_nivel.png",
  plot = grafico.nivel,
  width = 6,
  height = 3.5,
  units = "in",
  dpi = 300
)