soccer.caso <- base.lca |>
  filter(
    deporte == "soccer",
    sexo %in% c("hombre", "mujer"),
    nivel.agrupado %in% c("high school", "collegiate"),
    exposiciones > 0
  ) |>
  group_by(nivel.agrupado, sexo) |>
  summarise(
    lesiones = sum(lesiones.lca),
    exposiciones = sum(exposiciones),
    .groups = "drop"
  ) |>
  mutate(
    tasa.incidencia = (lesiones / exposiciones) * 1000
  )

write.csv2(
  incidencia.deporte.top,
  "res/tablas/caso_soccer.csv",
  row.names = FALSE
)
