resource "airbyte_source_aha" "my_source_aha" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    url                   = "...my_url..."
  }
  definition_id = "3f13fca3-3092-4888-a23e-ee767d0c5af3"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "db816559-06ec-40f3-b18c-d0b3fc168203"
}