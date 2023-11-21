resource "airbyte_source_square" "my_source_square" {
  configuration = {
    credentials = {
      source_square_api_key = {
        api_key = "...my_api_key..."
      }
    }
    include_deleted_objects = false
    is_sandbox              = false
    start_date              = "2022-11-22"
  }
  definition_id = "55c9f06b-5482-4c9e-b770-03d0337f10a6"
  name          = "Connie Homenick"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4ee32ccb-4d52-4da6-928f-2436a122e394"
}