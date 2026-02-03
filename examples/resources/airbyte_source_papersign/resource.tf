resource "airbyte_source_papersign" "my_source_papersign" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
  }
  definition_id = "afb55b3d-013b-498a-94ec-b49c3e47fd45"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "239dfcbe-cf04-4dbc-91b9-44e82e4ad7f5"
}