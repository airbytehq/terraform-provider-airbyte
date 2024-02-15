resource "airbyte_source_lever_hiring" "my_source_leverhiring" {
  configuration = {
    credentials = {
      authenticate_via_lever_api_key = {
        api_key = "...my_api_key..."
      }
    }
    environment = "Production"
    start_date  = "2021-03-01T00:00:00Z"
  }
  definition_id = "5647eb6b-abc0-4f9b-98b2-eafdc453fb6a"
  name          = "Joan Moen"
  secret_id     = "...my_secret_id..."
  workspace_id  = "447712b4-a020-4883-8aab-effb8d976510"
}