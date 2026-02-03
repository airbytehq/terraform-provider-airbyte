resource "airbyte_source_mailersend" "my_source_mailersend" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_token             = "...my_api_token..."
    domain_id             = "airbyte.com"
    start_date            = 123131321
  }
  definition_id = "c87decf3-4382-4e76-b647-d79be2604ad4"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "ff6c82a5-600d-4f12-bc12-8bd0df36537a"
}