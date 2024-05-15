resource "airbyte_source_rki_covid" "my_source_rkicovid" {
  configuration = {
    start_date = "...my_start_date..."
  }
  definition_id = "24436569-fd64-4cd2-bcf0-8a635d7a8c38"
  name          = "Rosalie Ward"
  secret_id     = "...my_secret_id..."
  workspace_id  = "fae93f7f-0f8c-44b4-b8d4-f6833e1f3303"
}