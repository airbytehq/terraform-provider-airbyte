resource "airbyte_source_smartengage" "my_source_smartengage" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
  }
  definition_id = "21cc4a17-a011-4485-8a3e-e2341a91ab9f"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "5c310aaf-bccb-4aee-98e1-e4a1a00d278e"
}