resource "airbyte_source_rki_covid" "my_source_rkicovid" {
  configuration = {
    source_type = "rki-covid"
    start_date  = "...my_start_date..."
  }
  name         = "Andy Herzog"
  workspace_id = "6cd02756-c354-4aa4-b2b4-7e1763c5208c"
}