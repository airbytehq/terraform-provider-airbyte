resource "airbyte_source_railz" "my_source_railz" {
  configuration = {
    client_id   = "...my_client_id..."
    secret_key  = "...my_secret_key..."
    source_type = "railz"
    start_date  = "...my_start_date..."
  }
  name         = "Myron Kunze"
  secret_id    = "...my_secret_id..."
  workspace_id = "77b4848b-d6a6-4f04-81d2-c3b808094373"
}