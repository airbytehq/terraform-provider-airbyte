resource "airbyte_source_google_forms" "my_source_googleforms" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    client_id             = "...my_client_id..."
    client_refresh_token  = "...my_client_refresh_token..."
    client_secret         = "...my_client_secret..."
    form_id = [
      "{ \"see\": \"documentation\" }"
    ]
  }
  definition_id = "e310de00-7b81-4e5d-90af-81b130e7236f"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "8f91c851-d01a-483e-887b-d0032fafc13f"
}