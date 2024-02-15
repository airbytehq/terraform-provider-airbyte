resource "airbyte_source_snapchat_marketing" "my_source_snapchatmarketing" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    end_date      = "2022-01-30"
    refresh_token = "...my_refresh_token..."
    start_date    = "2022-01-01"
  }
  definition_id = "b60aa080-4c97-41e6-8235-dc09fadad73b"
  name          = "Mr. Ramona Sporer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "48acfdc6-fb50-44a1-ab77-23cbf0223ae8"
}