resource "airbyte_source_instatus" "my_source_instatus" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
  }
  definition_id = "d38db7bb-4cad-42ec-ae80-30fa1bd51bbf"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "9b931996-6f02-45b4-a335-d1a81c58c303"
}