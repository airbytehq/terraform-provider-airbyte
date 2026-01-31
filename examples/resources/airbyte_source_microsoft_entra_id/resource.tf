resource "airbyte_source_microsoft_entra_id" "my_source_microsoftentraid" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    client_id             = "...my_client_id..."
    client_secret         = "...my_client_secret..."
    tenant_id             = "...my_tenant_id..."
    user_id               = "...my_user_id..."
  }
  definition_id = "cd531ddc-641b-45ed-b16f-c4637d58c3f8"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "786c4c9c-92fd-48ec-b049-b1d2d9bff29e"
}