resource "airbyte_source_qualaroo" "my_source_qualaroo" {
  configuration = {
    key        = "...my_key..."
    start_date = "2021-03-01T00:00:00.000Z"
    survey_ids = [
      "...",
    ]
    token = "...my_token..."
  }
  definition_id = "9af7c7e9-c462-409e-a52c-707cb05c4a8d"
  name          = "Cheryl Schmitt"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4658e520-f854-4a56-b309-cc0ee4bba7fa"
}