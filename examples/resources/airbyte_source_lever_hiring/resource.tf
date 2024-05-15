resource "airbyte_source_lever_hiring" "my_source_leverhiring" {
  configuration = {
    credentials = {
      authenticate_via_lever_api_key = {
        api_key = "...my_api_key..."
      }
    }
    environment = "Sandbox"
    start_date  = "2021-03-01T00:00:00Z"
  }
  definition_id = "d3753fe4-6a14-403b-a1bd-8103cfb42284"
  name          = "Jonathon Hermiston"
  secret_id     = "...my_secret_id..."
  workspace_id  = "759fd79d-74aa-420e-a69f-1b1a975dd1b5"
}