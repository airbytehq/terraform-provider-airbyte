resource "airbyte_source_microsoft_dataverse" "my_source_microsoftdataverse" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    client_id             = "...my_client_id..."
    client_secret_value   = "...my_client_secret_value..."
    odata_maxpagesize     = 8
    tenant_id             = "...my_tenant_id..."
    url                   = "https://<org-id>.crm.dynamics.com"
  }
  definition_id = "306411fd-3cb3-4786-a315-f75004f3c746"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "768a1641-d431-4a95-85fd-d213fdb4367a"
}