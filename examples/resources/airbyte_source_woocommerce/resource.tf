resource "airbyte_source_woocommerce" "my_source_woocommerce" {
  configuration = {
    api_key    = "...my_api_key..."
    api_secret = "...my_api_secret..."
    shop       = "...my_shop..."
    start_date = "2021-01-01"
  }
  definition_id = "512957c2-9869-4675-afe0-5881022b8ad4"
  name          = "Ms. Marcella Schiller"
  secret_id     = "...my_secret_id..."
  workspace_id  = "8754523f-36da-4b51-a289-0f3e992c2a3f"
}