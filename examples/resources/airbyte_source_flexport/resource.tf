resource "airbyte_source_flexport" "my_source_flexport" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2021-08-12T06:06:44.359Z"
  }
  definition_id = "9177aba0-4365-46db-a63b-76237ba10420"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "57b65a72-599d-4b12-ba33-f5a66b6323b1"
}