resource "airbyte_source_iterable" "my_source_iterable" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    start_date            = "2021-04-01T00:00:00Z"
  }
  definition_id = "2e875208-0c0b-4ee4-9e92-1cb3156ea799"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a46bf3e2-e63d-4e32-8959-37721daec43c"
}