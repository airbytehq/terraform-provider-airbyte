resource "airbyte_source_planhat" "my_source_planhat" {
  configuration = {
    api_token = "...my_api_token..."
  }
  definition_id = "294adbc5-bd34-4078-9cf0-b8d2c0412443"
  name          = "Vivian Kassulke"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d64cd2bc-f08a-4635-97a8-c386ceccfae9"
}