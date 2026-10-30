incidencia.nivel <- base.lca |>
  filter(
    nivel.agrupado %in% c(
      "amateur",
      "collegiate",
      "elite",
      "high school",
      "professional"),
    exposiciones > 0
  ) |>
  group_by(nivel.agrupado) |>
  summarise(
    lesiones = sum(lesiones.lca),
    exposiciones = sum(exposiciones)
  ) |>
  mutate(
    tasa.incidencia = (lesiones / exposiciones) * 1000
  )