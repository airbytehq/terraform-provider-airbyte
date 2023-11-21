resource "airbyte_source_monday" "my_source_monday" {
  configuration = {
    credentials = {
      api_token = {
        api_token = "...my_api_token..."
      }
    }
  }
  definition_id = "2050fdf2-ba7d-443d-a0d3-384e15ed5352"
  name          = "Stella Lubowitz"
  secret_id     = "...my_secret_id..."
  workspace_id  = "aeabadeb-93c7-4728-b9b6-069b6a28df31"
}