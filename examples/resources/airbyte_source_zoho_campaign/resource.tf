resource "airbyte_source_zoho_campaign" "my_source_zohocampaign" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    client_id_2           = "...my_client_id_2..."
    client_refresh_token  = "...my_client_refresh_token..."
    client_secret_2       = "...my_client_secret_2..."
    data_center           = "com"
  }
  definition_id = "5b75fc8d-6453-42c1-8099-71258dcf472f"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "ca5b05c7-2e60-48da-b3f0-ec9a168eede9"
}