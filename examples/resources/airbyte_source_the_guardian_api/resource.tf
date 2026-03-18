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
  definition_id = "d42bd69f-6bf0-4d0b-9209-16231af07a92"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "4d24582c-b7c1-4d05-99b9-d96b62ad290b"
}