grafico.deporte <- ggplot(
  incidencia.deporte.top,
  aes(
    x = reorder(deporte, tasa.incidencia),
    y = tasa.incidencia
  )
) +
  geom_col(fill = "steelblue") +
  coord_flip() +
  labs(
    title = stringr::str_wrap("Gráfico 1. Incidencia de lesiones del LCA según deporte"),
    x = "Deporte",
    y = "Tasa de incidencia por 1000 exposiciones"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(size = 14, face = "bold"),
    axis.title = element_text(size = 12),
    axis.text = element_text(size = 10)
  )

ggsave(
  filename = "res/graficos/incidencia_deporte.png",
  plot = grafico.deporte,
  width = 8,
  height = 5,
  units = "in",
  dpi = 300
)