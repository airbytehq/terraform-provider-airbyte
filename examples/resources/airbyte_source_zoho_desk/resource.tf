resource "airbyte_source_zoho_desk" "my_source_zohodesk" {
  configuration = {
    client_id              = "...my_client_id..."
    client_secret          = "...my_client_secret..."
    include_custom_domain  = true
    refresh_token          = "...my_refresh_token..."
    token_refresh_endpoint = "...my_token_refresh_endpoint..."
  }
  definition_id = "d16a9662-b2d6-40d4-a096-b865567df330"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "f2d6765e-6635-44d4-ae8c-8380f4c57950"
}