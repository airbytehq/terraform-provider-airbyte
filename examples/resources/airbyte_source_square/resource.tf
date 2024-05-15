resource "airbyte_source_square" "my_source_square" {
  configuration = {
    credentials = {
      api_key = {
        api_key = "...my_api_key..."
      }
    }
    include_deleted_objects = true
    is_sandbox              = true
    start_date              = "2022-07-20"
  }
  definition_id = "d8cbc054-7dc9-43d7-9762-8c47813582a6"
  name          = "Gordon Durgan"
  secret_id     = "...my_secret_id..."
  workspace_id  = "9dfc7f45-8565-4e71-95c9-f06b5482c9eb"
}