resource "airbyte_source_rki_covid" "my_source_rkicovid" {
  configuration = {
    source_type = "rki-covid"
    start_date  = "...my_start_date..."
  }
  name         = "Patricia Kuvalis"
  secret_id    = "...my_secretId..."
  workspace_id = "3e9802d8-2f0d-445e-b4a8-b674ee5cfc18"
}