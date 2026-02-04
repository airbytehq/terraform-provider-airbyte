resource "airbyte_source_airbyte_harness_source" "my_source_airbyteharnesssource" {
  configuration = {
    account_id         = "...my_account_id..."
    api_key            = "...my_api_key..."
    api_url            = "https://my-harness-server.example.com"
    cutoff_days        = 4.97
    deployment_timeout = 3.03
    page_size          = 7.47
  }
  definition_id = "d752900f-7f12-42be-a1b7-273982bbe3d3"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "0fd02dd4-17af-4b2c-8478-48a7db398532"
}