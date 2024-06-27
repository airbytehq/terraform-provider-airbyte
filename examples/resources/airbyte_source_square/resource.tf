resource "airbyte_source_square" "my_source_square" {
  configuration = {
    credentials = {
      api_key = {
        api_key = "...my_api_key..."
      }
    }
    include_deleted_objects = true
    is_sandbox              = true
    start_date              = "2022-09-30"
  }
  definition_id = "69b6ca0b-303c-4f01-bcd9-78363f1be7e9"
  name          = "Tom O'Keefe"
  secret_id     = "...my_secret_id..."
  workspace_id  = "fc5ff714-6c36-4bb7-b37b-f0beca93a8ae"
}