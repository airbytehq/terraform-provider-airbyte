resource "airbyte_source_coda" "my_source_coda" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    auth_token            = "...my_auth_token..."
  }
  definition_id = "27f910fd-f832-4b2e-bcfd-6ab342e434d8"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "b73364e1-f8bf-4063-b2f7-8fa23b543f14"
}