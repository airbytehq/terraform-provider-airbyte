resource "airbyte_source_confluence" "my_source_confluence" {
  configuration = {
    api_token   = "...my_api_token..."
    domain_name = "...my_domain_name..."
    email       = "abc@example.com"
  }
  definition_id = "9f5a34ff-680c-488d-8e9f-7431721e4227"
  name          = "Miss Dewey Hintz"
  secret_id     = "...my_secret_id..."
  workspace_id  = "6ec345b5-c1ba-4e74-b26a-8cd9c5aad47a"
}