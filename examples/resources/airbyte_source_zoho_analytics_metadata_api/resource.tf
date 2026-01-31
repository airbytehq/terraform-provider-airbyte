resource "airbyte_source_zoho_analytics_metadata_api" "my_source_zohoanalyticsmetadataapi" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    client_id             = "...my_client_id..."
    client_secret         = "...my_client_secret..."
    data_center           = "in"
    org_id                = 2.43
    refresh_token         = "...my_refresh_token..."
  }
  definition_id = "c8aaa8fc-8bb4-4506-bace-e85bb72bc081"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "8cce7532-ca7a-4734-8fc4-a0eb7fcafafc"
}