resource "airbyte_source_sharetribe" "my_source_sharetribe" {
  configuration = {
    client_id               = "...my_client_id..."
    client_secret           = "...my_client_secret..."
    oauth_access_token      = "...my_oauth_access_token..."
    oauth_token_expiry_date = "2022-12-01T23:32:41.566Z"
    start_date              = "2022-10-26T18:20:49.032Z"
  }
  definition_id = "19fe8297-1226-4078-8ad2-f6e3984ff0ee"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "47b89654-8b46-493e-884e-e013e552d57c"
}