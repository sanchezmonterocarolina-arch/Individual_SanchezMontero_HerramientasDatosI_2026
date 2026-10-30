incidencia.deporte.top <- incidencia.deporte |>
  slice_max(
    order_by = tasa.incidencia,
    n = 22,
    with_ties = FALSE
  )