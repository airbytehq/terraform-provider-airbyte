resource "airbyte_source_microsoft_lists" "my_source_microsoftlists" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    application_id_uri    = "...my_application_id_uri..."
    client_id             = "...my_client_id..."
    client_secret         = "...my_client_secret..."
    domain                = "...my_domain..."
    site_id               = "...my_site_id..."
    tenant_id             = "...my_tenant_id..."
  }
  definition_id = "00e88aaf-2570-46c8-b611-8a1bd6630d7c"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "61e82e10-abb5-4dc2-8095-5c881621f639"
}