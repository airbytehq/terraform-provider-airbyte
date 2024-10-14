resource "airbyte_source_woocommerce" "my_source_woocommerce" {
  configuration = {
    api_key    = "...my_api_key..."
    api_secret = "...my_api_secret..."
    shop       = "...my_shop..."
    start_date = "2021-01-01"
  }
  definition_id = "5b87d40f-20e4-42b3-b267-1deb489c5b98"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "820ccea2-91c4-433d-bca2-ae97f9986afe"
}