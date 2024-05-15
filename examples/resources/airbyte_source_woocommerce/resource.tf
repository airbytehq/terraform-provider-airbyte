resource "airbyte_source_woocommerce" "my_source_woocommerce" {
  configuration = {
    api_key    = "...my_api_key..."
    api_secret = "...my_api_secret..."
    shop       = "...my_shop..."
    start_date = "2021-01-01"
  }
  definition_id = "b2db7532-b28c-4b78-9b8d-4ad9bb4c2d04"
  name          = "Lester Sawayn"
  secret_id     = "...my_secret_id..."
  workspace_id  = "0e440965-9dbf-46ec-af35-c15b3779d7e3"
}