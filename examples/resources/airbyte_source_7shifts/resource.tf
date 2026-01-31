resource "airbyte_source_7shifts" "my_source_7shifts" {
  configuration = {
    access_token          = "...my_access_token..."
    additional_properties = "{ \"see\": \"documentation\" }"
    start_date            = "2022-05-11T16:52:45.304Z"
  }
  definition_id = "dffeb976-6cd0-47d2-8f26-3f9f17b53d39"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "cb22d725-edac-48cf-960b-7a9061de3d71"
}