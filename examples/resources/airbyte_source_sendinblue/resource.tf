resource "airbyte_source_sendinblue" "my_source_sendinblue" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "cf147e29-3c7a-44b2-97bb-c290ef00ad53"
  name          = "Ruby Davis"
  secret_id     = "...my_secret_id..."
  workspace_id  = "fe50a2e7-cfe6-4f34-acc6-5c56f5fa6778"
}