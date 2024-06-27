resource "airbyte_source_rki_covid" "my_source_rkicovid" {
  configuration = {
    start_date = "...my_start_date..."
  }
  definition_id = "6bc977a3-bf4d-4ff8-9d83-5d80427d23a4"
  name          = "Gerald Stoltenberg"
  secret_id     = "...my_secret_id..."
  workspace_id  = "723c8e5e-259f-4e4e-b649-3875b5a324c6"
}