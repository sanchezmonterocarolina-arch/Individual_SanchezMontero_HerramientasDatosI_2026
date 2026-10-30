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
  labs(
    title = "Gráfico 3. Incidencia de lesiones del LCA según sexo",
    x = "Sexo",
    y = "Tasa de incidencia por 1000 exposiciones"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(size = 14, face = "bold"),
    axis.title = element_text(size = 12),
    axis.text = element_text(size = 10),
    legend.position = "none"
  )