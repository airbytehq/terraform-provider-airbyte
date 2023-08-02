resource "airbyte_source_railz" "my_source_railz" {
  configuration = {
    client_id   = "...my_client_id..."
    secret_key  = "...my_secret_key..."
    source_type = "railz"
    start_date  = "...my_start_date..."
  }
  name         = "Elaine Cummerata PhD"
  secret_id    = "...my_secretId..."
  workspace_id = "336561ec-a16e-4f89-851b-d76eeeb518c4"
}