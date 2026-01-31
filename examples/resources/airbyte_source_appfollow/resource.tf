resource "airbyte_source_appfollow" "my_source_appfollow" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_secret            = "...my_api_secret..."
  }
  definition_id = "23ac9822-9f43-4e31-a31d-6a6109f207ae"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "fdaa89a3-6845-4ed8-abc8-d5d54ff37be9"
}