resource "airbyte_source_rki_covid" "my_source_rkicovid" {
  configuration = {
    start_date = "...my_start_date..."
  }
  definition_id = "f3303ab0-45c8-491f-a9c8-dcb6cc1cd73d"
  name          = "Leticia Zieme Sr."
  secret_id     = "...my_secret_id..."
  workspace_id  = "36d5989e-7dba-4ce4-805a-6307276c58b5"
}