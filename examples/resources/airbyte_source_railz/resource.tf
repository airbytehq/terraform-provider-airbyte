resource "airbyte_source_railz" "my_source_railz" {
  configuration = {
    client_id  = "...my_client_id..."
    secret_key = "...my_secret_key..."
    start_date = "...my_start_date..."
  }
  definition_id = "72ede129-9d48-4414-90fd-6e7ec48816b0"
  name          = "Reginald Dibbert"
  secret_id     = "...my_secret_id..."
  workspace_id  = "975147c3-e6c8-4bd1-8cca-d3b1c4065293"
}