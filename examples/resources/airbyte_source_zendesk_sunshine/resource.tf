resource "airbyte_source_zendesk_sunshine" "my_source_zendesksunshine" {
  configuration = {
    credentials = {
      api_token = {
        api_token = "...my_api_token..."
        email     = "Kamille_Jast@gmail.com"
      }
    }
    start_date = "2021-01-01T00:00:00Z"
    subdomain  = "...my_subdomain..."
  }
  definition_id = "18dbd5eb-ee01-44e0-bead-c6f53d253db8"
  name          = "Lawrence Towne"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d437be8f-4cf7-497f-a8ae-012beba22c99"
}