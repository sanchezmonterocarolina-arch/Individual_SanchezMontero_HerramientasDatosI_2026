incidencia.deporte.top <- incidencia.deporte |>
  slice_max(
    order_by = tasa.incidencia,
    n = 22,
    with_ties = FALSE
  )

write.csv2(
  incidencia.deporte.top,
  "res/tablas/incidencia_deporte_top.csv",
  row.names = FALSE
)