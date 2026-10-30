incidencia.deporte <- base.lca |>
  filter(
    deporte != "desconocido",
    deporte != "soccer, basketball",
    exposiciones > 0
  ) |>
  group_by(deporte) |>
  summarise(
    lesiones = sum(lesiones.lca),
    exposiciones = sum(exposiciones)
  ) |>
  mutate(
    tasa.incidencia = (lesiones / exposiciones) * 1000
  )
