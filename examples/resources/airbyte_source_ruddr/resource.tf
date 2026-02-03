resource "airbyte_source_ruddr" "my_source_ruddr" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_token             = "...my_api_token..."
  }
  definition_id = "6a793f2f-e179-43ad-b238-f7756a93328a"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "b0b42653-9c90-45b5-ac07-77c07157d014"
}