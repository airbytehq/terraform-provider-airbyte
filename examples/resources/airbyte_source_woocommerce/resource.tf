resource "airbyte_source_woocommerce" "my_source_woocommerce" {
  configuration = {
    api_key    = "...my_api_key..."
    api_secret = "...my_api_secret..."
    shop       = "...my_shop..."
    start_date = "2021-01-01"
  }
  definition_id = "f3e58149-5129-457c-a986-96756fe05881"
  name          = "Julia Cole"
  secret_id     = "...my_secret_id..."
  workspace_id  = "ad45dc07-8875-4452-bf36-dab5122890f3"
}