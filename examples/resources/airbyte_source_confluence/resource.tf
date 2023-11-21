resource "airbyte_source_confluence" "my_source_confluence" {
  configuration = {
    api_token   = "...my_api_token..."
    domain_name = "...my_domain_name..."
    email       = "abc@example.com"
  }
  definition_id = "82e70e18-a817-42f9-b227-1c9f9cbaa542"
  name          = "Ms. Nathaniel Walter V"
  secret_id     = "...my_secret_id..."
  workspace_id  = "61d84c3f-bc24-4f86-8fce-85198c116e72"
}