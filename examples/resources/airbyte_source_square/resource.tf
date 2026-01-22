resource "airbyte_source_square" "my_source_square" {
  configuration = {
    credentials = {
      oauth_authentication = {
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
        refresh_token = "...my_refresh_token..."
      }
    }
    include_deleted_objects = true
    is_sandbox              = false
    start_date              = "2022-12-06"
  }
  definition_id = "62738d12-88d2-4454-b175-22fec285b6ec"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "873caa16-3a7f-42ab-8efd-b0ccb2d1796d"
}