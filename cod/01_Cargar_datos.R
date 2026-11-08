library(tidyverse)

library(readxl)
beynnon <- read_excel(
  "data/Data_Original/beynnon_2014_tabla_1_datos_para_R.xlsx",
  sheet = "datos.r"
)

Montalvo <- read_excel(
  "data/Data_Original/Montalvo_2019_tabla_2_original.xlsx",
  sheet = "Table 2 - Original"
)

base.lca <- read_excel(
  "data/Data_Integrada/base_maestra_lca.xlsx",
  sheet = "Base_maestra"
)

dim(beynnon)
dim(Montalvo)
dim(base.lca)
