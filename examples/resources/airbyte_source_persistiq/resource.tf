resource "airbyte_source_persistiq" "my_source_persistiq" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
  }
  definition_id = "3052c77e-8b91-47e2-97a0-a29a22794b4b"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a850da6c-caed-476f-96c7-110c17210796"
}