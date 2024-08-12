resource "airbyte_source_klaviyo" "my_source_klaviyo" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2017-01-25T00:00:00Z"
  }
  definition_id = "c649b6bc-8e2c-47d0-9e0f-8a2b57adde20"
  name          = "Mr. Erik Heathcote DVM"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d0612ffd-3df1-4197-8b38-5957e3c921cc"
}