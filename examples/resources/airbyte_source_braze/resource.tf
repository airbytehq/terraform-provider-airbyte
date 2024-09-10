resource "airbyte_source_braze" "my_source_braze" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2022-10-27"
    url        = "...my_url..."
  }
  definition_id = "305e0c1f-4b65-4d9e-bd75-7e5946981cb4"
  name          = "Maria Lubowitz"
  secret_id     = "...my_secret_id..."
  workspace_id  = "1686308e-adb7-43c3-a9be-0c12ece59b9f"
}