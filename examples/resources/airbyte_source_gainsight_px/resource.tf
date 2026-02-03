resource "airbyte_source_gainsight_px" "my_source_gainsightpx" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
  }
  definition_id = "091ce766-3b55-4107-a910-a810385193a8"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "b45e5cee-7457-4952-8f8e-95f41f1c92b0"
}