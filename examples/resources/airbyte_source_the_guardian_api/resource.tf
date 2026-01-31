resource "airbyte_source_the_guardian_api" "my_source_theguardianapi" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    end_date              = "YYYY-MM-DD"
    query                 = "environment AND NOT water"
    section               = "media"
    start_date            = "YYYY-MM-DD"
    tag                   = "environment/recycling"
  }
  definition_id = "b41ed4be-d785-4faf-b482-1fac261be026"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "4d24582c-b7c1-4d05-99b9-d96b62ad290b"
}