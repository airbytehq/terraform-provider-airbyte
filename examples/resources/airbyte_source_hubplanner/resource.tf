resource "airbyte_source_hubplanner" "my_source_hubplanner" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
  }
  definition_id = "8097ceb9-383f-42f6-9f92-d3fd4bcc7689"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "6432cd85-66e2-44fb-a829-fd30f6331eb3"
}