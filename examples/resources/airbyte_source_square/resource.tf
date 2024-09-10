resource "airbyte_source_square" "my_source_square" {
  configuration = {
    credentials = {
      api_key = {
        api_key = "...my_api_key..."
      }
    }
    include_deleted_objects = true
    is_sandbox              = true
    start_date              = "2022-03-17"
  }
  definition_id = "8bf07f2e-7721-4366-a46f-a9b2db7532b2"
  name          = "Edmund Reynolds"
  secret_id     = "...my_secret_id..."
  workspace_id  = "5b8d4ad9-bb4c-42d0-8c6c-eb0e4409659d"
}