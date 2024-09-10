resource "airbyte_source_woocommerce" "my_source_woocommerce" {
  configuration = {
    api_key    = "...my_api_key..."
    api_secret = "...my_api_secret..."
    shop       = "...my_shop..."
    start_date = "2021-01-01"
  }
  definition_id = "bc947d1a-36d8-4135-b42d-9b671ba3daf1"
  name          = "Faith Watsica"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d62693dd-fcad-432b-811f-0852299485bd"
}