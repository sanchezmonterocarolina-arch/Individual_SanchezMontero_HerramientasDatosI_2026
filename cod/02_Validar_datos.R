str(base_maestra_lca)

colSums(is.na(base_maestra_lca))

sum(duplicated(base_maestra_lca))

dim(base_maestra_lca)

names(base_maestra_lca)

summary(base_maestra_lca)

comparacion.fuentes <- base_maestra_lca |>
  filter(exposiciones > 0) |>
  group_by(fuente, sexo) |>
  summarise(
    lesiones = sum(lesiones.lca),
    exposiciones = sum(exposiciones),
    .groups = "drop"
  ) |>
  mutate(
    tasa.incidencia = lesiones / exposiciones * 1000
  )

print(comparacion.fuentes)
