resource "airbyte_source_railz" "my_source_railz" {
  configuration = {
    client_id  = "...my_client_id..."
    secret_key = "...my_secret_key..."
    start_date = "...my_start_date..."
  }
  definition_id = "ae1d217c-0fcb-4e7d-ad34-33ea862799ca"
  name          = "Alvin Roob"
  secret_id     = "...my_secret_id..."
  workspace_id  = "833469d3-410e-4395-a0aa-c55dc9d09788"
}