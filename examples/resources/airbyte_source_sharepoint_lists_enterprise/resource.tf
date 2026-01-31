resource "airbyte_source_sharepoint_lists_enterprise" "my_source_sharepointlistsenterprise" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    client_id             = "...my_client_id..."
    client_secret         = "...my_client_secret..."
    site_id               = "...my_site_id..."
    tenant_id             = "...my_tenant_id..."
  }
  definition_id = "b5809a74-92ef-455e-80df-d4d119fe5e59"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "ba50ac33-e438-423c-8776-94e7ef33a759"
}