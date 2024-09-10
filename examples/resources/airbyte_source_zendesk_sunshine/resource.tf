resource "airbyte_source_zendesk_sunshine" "my_source_zendesksunshine" {
  configuration = {
    credentials = {
      api_token = {
        api_token = "...my_api_token..."
        email     = "Gracie_Howell@gmail.com"
      }
    }
    start_date = "2021-01-01T00:00:00Z"
    subdomain  = "...my_subdomain..."
  }
  definition_id = "7c9141ac-8dcf-4207-806d-a07742c26203"
  name          = "Felix Beer II"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4956e9a2-d9da-4eda-9833-c055c950c18b"
}