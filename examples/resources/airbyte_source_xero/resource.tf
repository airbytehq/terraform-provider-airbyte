resource "airbyte_source_xero" "my_source_xero" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    credentials = {
      bearer_access_token = {
        access_token = "...my_access_token..."
      }
    }
    start_date = "2022-03-01T00:00:00Z"
    tenant_id  = "...my_tenant_id..."
  }
  definition_id = "ef03926e-13cb-4929-aa6b-e7c8e1b0c80e"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "de2e80b4-0898-4bea-821b-cb0c33f06888"
}