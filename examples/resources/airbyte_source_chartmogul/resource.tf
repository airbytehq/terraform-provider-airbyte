resource "airbyte_source_chartmogul" "my_source_chartmogul" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2017-01-25T00:00:00Z"
  }
  definition_id = "305e0c1f-4b65-4d9e-bd75-7e5946981cb4"
  name          = "Maria Lubowitz"
  secret_id     = "...my_secret_id..."
  workspace_id  = "1686308e-adb7-43c3-a9be-0c12ece59b9f"
}