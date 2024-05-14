resource "airbyte_source_woocommerce" "my_source_woocommerce" {
  configuration = {
    api_key    = "...my_api_key..."
    api_secret = "...my_api_secret..."
    shop       = "...my_shop..."
    start_date = "2021-01-01"
  }
  definition_id = "e9226a95-4fff-493d-92e3-92ce90b9169f"
  name          = "Nathan Beier"
  secret_id     = "...my_secret_id..."
  workspace_id  = "2efb21ef-2bc4-48bf-87f2-e7721366646f"
}