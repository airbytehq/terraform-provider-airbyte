resource "airbyte_source_pipedrive" "my_source_pipedrive" {
  configuration = {
    api_token              = "...my_api_token..."
    replication_start_date = "2017-01-25 00:00:00Z"
  }
  definition_id = "649fe5b0-8c82-4dc4-8ca1-ab76639716f1"
  name          = "Clayton Doyle PhD"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f025a154-586c-47cd-bb55-8f87809d3d1f"
}