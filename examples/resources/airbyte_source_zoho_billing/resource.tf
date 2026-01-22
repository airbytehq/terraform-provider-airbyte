resource "airbyte_source_zoho_billing" "my_source_zohobilling" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    refresh_token = "...my_refresh_token..."
    region        = "in"
  }
  definition_id = "a605a444-48aa-4af1-98fd-86e6ebc85120"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "33a669d3-8940-412d-9a2d-1650a5c49d45"
}