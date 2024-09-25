resource "airbyte_source_high_level" "my_source_highlevel" {
  configuration = {
    api_key     = "...my_api_key..."
    location_id = "...my_location_id..."
    start_date  = "2021-11-13T14:23:46.779Z"
  }
  definition_id = "7768e793-45d1-4446-b033-18f29cf10b07"
  name          = "Julia Reichel"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b499111a-320c-4cad-9adc-1330ef574883"
}