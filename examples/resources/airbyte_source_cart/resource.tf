resource "airbyte_source_cart" "my_source_cart" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    credentials = {
      single_store_access_token = {
        access_token = "...my_access_token..."
        store_name   = "...my_store_name..."
      }
    }
    start_date = "2021-01-01T00:00:00Z"
  }
  definition_id = "33c6453d-2a16-47f0-8374-5c4dba262a49"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "1aa2904a-5ba0-4ded-aa51-0be365206ac8"
}