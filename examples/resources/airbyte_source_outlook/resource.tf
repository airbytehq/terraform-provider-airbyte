resource "airbyte_source_outlook" "my_source_outlook" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    client_id             = "...my_client_id..."
    client_secret         = "...my_client_secret..."
    refresh_token         = "...my_refresh_token..."
    tenant_id             = "...my_tenant_id..."
  }
  definition_id = "bdc4cd80-4fff-40b8-9d30-69ce1bf53f0b"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "9b235e87-477f-4c15-8611-60ebe4d40e80"
}