resource "airbyte_source_rki_covid" "my_source_rkicovid" {
  configuration = {
    start_date = "...my_start_date..."
  }
  definition_id = "a5dd7ddb-d797-4d2e-b894-fd682a677b1b"
  name          = "Owen Ritchie"
  secret_id     = "...my_secret_id..."
  workspace_id  = "eb9b5c2e-2ee8-4b85-b41c-f2efd5ed605e"
}