resource "airbyte_source_square" "my_source_square" {
  configuration = {
    credentials = {
      api_key = {
        api_key = "...my_api_key..."
      }
    }
    include_deleted_objects = false
    is_sandbox              = true
    start_date              = "2020-10-10"
  }
  definition_id = "6d5dc1e2-50f8-40fb-8595-c3777bccfe70"
  name          = "Marlon Bruen"
  secret_id     = "...my_secret_id..."
  workspace_id  = "e293c7a4-b2d7-4bbc-a90e-f00ad5372256"
}