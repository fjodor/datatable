# Also eigene Funktionen definieren ...
# Problem: Rückwandlung in vergleichbare Objekte (data.frame) dauert unterschiedlich lange,
# verzerrt Ergebnisse!

# varberech_BaseR <- function() {
#   batrips$duration_minutes <- batrips$duration / 60
#   as.data.frame(batrips)
# }
# 
# varberech_dplyr <- function() {
#   batrips_dpl <- mutate(batrips_dpl, duration_minutes = duration / 60)
#   as.data.frame(batrips_dpl)
# }
# 
# varberech_dplyr_pipe <- function() {
#   batrips_dpl <- batrips_dpl %>% 
#     mutate(duration_minutes = duration / 60)
#   as.data.frame(batrips_dpl)
# }
# 
# varberech_datatable <- function() {
#   batrips_dt[, duration_minutes := duration / 60]
#   as.data.frame(batrips_dt)
# }
# 
# timing <- bench::mark(
#   varberech_BaseR(),
#   varberech_dplyr(),
#   varberech_dplyr_pipe(),
#   varberech_datatable()
# )
# 
# timing
# 
# timing %>%
#     mutate(expression = forcats::fct_reorder(as.character(expression), median, .desc = TRUE)) %>%
#     as_bench_mark() %>%
#     autoplot()
# 
# bench::mark(
#   varberech_BaseR(),
#   varberech_dplyr(),
#   varberech_dplyr_pipe(),
#   varberech_datatable(),
#   relative = TRUE
# )
