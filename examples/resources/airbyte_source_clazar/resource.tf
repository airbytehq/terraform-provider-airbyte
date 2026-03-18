resource "airbyte_source_clazar" "my_source_clazar" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    client_id             = "...my_client_id..."
    client_secret         = "...my_client_secret..."
  }
  definition_id = "d7df7b64-6266-45b5-ad83-e1515578f371"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "cb625e21-58bc-4c4a-9b08-9ae0dc70a1f9"
}