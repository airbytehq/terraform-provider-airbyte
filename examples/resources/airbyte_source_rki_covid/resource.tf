resource "airbyte_source_rki_covid" "my_source_rkicovid" {
  configuration = {
    source_type = "rki-covid"
    start_date  = "...my_start_date..."
  }
  name         = "Diana Bogisich"
  secret_id    = "...my_secret_id..."
  workspace_id = "edc046bc-5163-4bbc-a492-27c42c22c553"
}