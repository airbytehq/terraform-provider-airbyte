resource "airbyte_source_zoho_invoice" "my_source_zohoinvoice" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    client_id             = "...my_client_id..."
    client_refresh_token  = "...my_client_refresh_token..."
    client_secret         = "...my_client_secret..."
    organization_id       = "...my_organization_id..."
    region                = "com"
  }
  definition_id = "f6f0146e-2a00-41c2-8033-f42c956b1f14"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a41ae699-d107-4826-908c-1954a2ea1e4e"
}