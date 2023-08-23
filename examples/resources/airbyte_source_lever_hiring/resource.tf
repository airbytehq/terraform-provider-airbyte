resource "airbyte_source_lever_hiring" "my_source_leverhiring" {
  configuration = {
    credentials = {
      source_lever_hiring_authentication_mechanism_authenticate_via_lever_api_key_ = {
        api_key   = "...my_api_key..."
        auth_type = "Api Key"
      }
    }
    environment = "Sandbox"
    source_type = "lever-hiring"
    start_date  = "2021-03-01T00:00:00Z"
  }
  name         = "Mrs. Amos Ryan"
  secret_id    = "...my_secret_id..."
  workspace_id = "eb4d6e1e-ae0f-475a-adf2-acab58b991c9"
}