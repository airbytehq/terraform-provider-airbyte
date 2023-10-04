resource "airbyte_source_rki_covid" "my_source_rkicovid" {
  configuration = {
    start_date = "...my_start_date..."
  }
  name         = "Mr. Earl Rempel"
  secret_id    = "...my_secret_id..."
  workspace_id = "c7045956-c03e-4c7b-8b68-fdfc0692b4fd"
}