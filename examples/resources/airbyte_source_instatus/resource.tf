resource "airbyte_source_instatus" "my_source_instatus" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
  }
  definition_id = "1901024c-0249-45d0-bcac-31a954652927"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "9b931996-6f02-45b4-a335-d1a81c58c303"
}