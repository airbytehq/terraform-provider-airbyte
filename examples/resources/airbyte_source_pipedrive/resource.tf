resource "airbyte_source_pipedrive" "my_source_pipedrive" {
  configuration = {
    api_token              = "...my_api_token..."
    replication_start_date = "2017-01-25 00:00:00Z"
  }
  definition_id = "01397d3d-fd90-4aff-a604-97cb974a7d80"
  name          = "Kathleen Schiller"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4b7daa2d-7b02-4155-8aad-a4df01cf56ee"
}