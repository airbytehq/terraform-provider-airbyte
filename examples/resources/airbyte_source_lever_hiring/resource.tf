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
  name         = "Donald Wuckert"
  secret_id    = "...my_secret_id..."
  workspace_id = "aedf2aca-b58b-4991-8926-ddb589461e74"
}