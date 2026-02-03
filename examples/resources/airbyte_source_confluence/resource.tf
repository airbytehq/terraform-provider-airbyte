resource "airbyte_source_confluence" "my_source_confluence" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_token             = "...my_api_token..."
    domain_name           = "...my_domain_name..."
    email                 = "abc@example.com"
  }
  definition_id = "ed1e98ac-2e56-44e0-8c47-a9ee6675d565"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "3ec221a7-9e42-4d09-9767-198ecfc0508b"
}