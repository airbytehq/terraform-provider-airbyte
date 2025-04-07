resource "airbyte_source_cisco_meraki" "my_source_ciscomeraki" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2022-07-09T04:20:56.324Z"
  }
  definition_id = "3c0f8247-934c-4452-a837-d3cfc3ac86ee"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "554430a1-2166-4354-9891-0023522a6daa"
}