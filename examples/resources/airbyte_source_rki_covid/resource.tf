resource "airbyte_source_rki_covid" "my_source_rkicovid" {
  configuration = {
    start_date = "...my_start_date..."
  }
  definition_id = "7276c58b-5da2-41f7-b986-a71e992c2b81"
  name          = "Erin Hyatt"
  secret_id     = "...my_secret_id..."
  workspace_id  = "977a3bf4-dff8-4dd8-b5d8-0427d23a4e1d"
}