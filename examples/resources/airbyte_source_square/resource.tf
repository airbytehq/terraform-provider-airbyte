resource "airbyte_source_square" "my_source_square" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    credentials = {
      oauth_authentication = {
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
        refresh_token = "...my_refresh_token..."
      }
    }
    include_deleted_objects = false
    is_sandbox              = false
    start_date              = "2021-01-01"
  }
  definition_id = "77225a51-cd15-4a13-af02-65816bd0ecf4"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "873caa16-3a7f-42ab-8efd-b0ccb2d1796d"
}