resource "airbyte_source_woocommerce" "my_source_woocommerce" {
  configuration = {
    api_key    = "...my_api_key..."
    api_secret = "...my_api_secret..."
    shop       = "...my_shop..."
    start_date = "2021-01-01"
  }
  definition_id = "3828542b-b37a-4458-bacd-1771a16fff1f"
  name          = "Eva O'Reilly"
  secret_id     = "...my_secret_id..."
  workspace_id  = "bc306c4f-3397-4c20-875f-aadeba481e41"
}