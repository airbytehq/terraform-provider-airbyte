resource "airbyte_source_open_exchange_rates" "my_source_openexchangerates" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    app_id                = "...my_app_id..."
    base                  = "EUR"
    start_date            = "YYYY-MM-DD"
  }
  definition_id = "9a1d7ee8-b4f0-4983-859d-02e593e5f9d9"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "6ba8882e-5904-40e4-8df7-be593ebbc864"
}