resource "airbyte_source_square" "my_source_square" {
  configuration = {
    credentials = {
      api_key = {
        api_key = "...my_api_key..."
      }
    }
    include_deleted_objects = false
    is_sandbox              = true
    start_date              = "2022-12-22"
  }
  definition_id = "aa0804c9-71e6-4023-9dc0-9fadad73b79d"
  name          = "Lisa Rohan"
  secret_id     = "...my_secret_id..."
  workspace_id  = "acfdc6fb-504a-412b-b723-cbf0223ae822"
}