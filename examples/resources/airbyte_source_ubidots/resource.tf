resource "airbyte_source_ubidots" "my_source_ubidots" {
  configuration = {
    api_token = "...my_api_token..."
  }
  definition_id = "516348bc-7fbc-42fe-a67f-24aa5e66a52d"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "0037ba9c-e612-40ef-a47c-40d5367ee0b1"
}