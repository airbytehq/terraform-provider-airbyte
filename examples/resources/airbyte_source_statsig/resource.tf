resource "airbyte_source_statsig" "my_source_statsig" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    end_date              = "2022-08-16T10:19:12.312Z"
    start_date            = "2022-06-09T07:36:23.239Z"
  }
  definition_id = "f8b60d29-9416-46f0-a151-442509002ca3"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "8448a843-06ba-4a84-ba13-296dc04bc120"
}