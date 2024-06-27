resource "airbyte_source_sendgrid" "my_source_sendgrid" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2020-02-29T00:35:24.807Z"
  }
  definition_id = "57eb672b-8aa5-45d6-bfb2-a63da0917a61"
  name          = "Christine Weimann"
  secret_id     = "...my_secret_id..."
  workspace_id  = "3e8ec69b-abb3-4389-b4cd-0d539af2319a"
}