resource "airbyte_source_braze" "my_source_braze" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2021-08-21"
    url        = "...my_url..."
  }
  definition_id = "f1a27e8f-d2f1-493d-8f9a-b29a2f8317de"
  name          = "Herbert Torphy"
  secret_id     = "...my_secret_id..."
  workspace_id  = "ab02ccb9-0852-43df-96a0-cc4991982a68"
}