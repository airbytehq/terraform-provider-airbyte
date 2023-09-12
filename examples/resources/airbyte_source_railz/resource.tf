resource "airbyte_source_railz" "my_source_railz" {
  configuration = {
    client_id   = "...my_client_id..."
    secret_key  = "...my_secret_key..."
    source_type = "railz"
    start_date  = "...my_start_date..."
  }
  name         = "Clyde Schmeler Jr."
  secret_id    = "...my_secret_id..."
  workspace_id = "fe51e528-a45a-4c82-b85f-8bc2caba8da4"
}