resource "airbyte_source_chartmogul" "my_source_chartmogul" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2017-01-25T00:00:00Z"
  }
  definition_id = "10ca67a8-27c3-4d34-9f44-4d8a8589d849"
  name          = "Hope Russel"
  secret_id     = "...my_secret_id..."
  workspace_id  = "ea550038-01e9-4f44-a900-c8feba7b45cf"
}