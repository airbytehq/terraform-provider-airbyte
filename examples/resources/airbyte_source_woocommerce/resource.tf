resource "airbyte_source_woocommerce" "my_source_woocommerce" {
  configuration = {
    api_key    = "...my_api_key..."
    api_secret = "...my_api_secret..."
    shop       = "...my_shop..."
    start_date = "2021-01-01"
  }
  definition_id = "8ad45dc0-7887-4545-a3f3-6dab5122890f"
  name          = "Cecelia McClure"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c2a3f4c8-fc02-46c7-8c4e-afdab4c1bcaf"
}