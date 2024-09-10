resource "airbyte_source_customer_io" "my_source_customerio" {
  configuration = {
    app_api_key = "...my_app_api_key..."
  }
  definition_id = "5fb58122-af6a-48ac-a553-6a205f1e4d30"
  name          = "Alonzo Parker"
  secret_id     = "...my_secret_id..."
  workspace_id  = "00594fbd-8663-414c-ace0-2f96b833556f"
}