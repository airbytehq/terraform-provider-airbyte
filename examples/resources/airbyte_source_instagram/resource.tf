resource "airbyte_source_instagram" "my_source_instagram" {
  configuration = {
    access_token  = "...my_access_token..."
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    num_workers   = 1
    start_date    = "2017-01-25T00:00:00Z"
  }
  definition_id = "6acf6b55-4f1e-4fca-944e-1a3caef8aba8"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "c12b19f2-4972-490b-ae38-c64d9c068d4d"
}