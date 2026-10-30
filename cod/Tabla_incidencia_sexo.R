incidencia.sexo <- base.lca |>
  filter(
    sexo != "desconocido",
    exposiciones > 0
  ) |>
  group_by(sexo) |>
  summarise(
    lesiones = sum(lesiones.lca),
    exposiciones = sum(exposiciones)
  ) |>
  mutate(
    tasa.incidencia = (lesiones / exposiciones) * 1000
  )