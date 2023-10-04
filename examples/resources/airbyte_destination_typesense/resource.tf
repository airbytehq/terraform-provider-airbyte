resource "airbyte_destination_typesense" "my_destination_typesense" {
  configuration = {
    api_key    = "...my_api_key..."
    batch_size = 8
    host       = "...my_host..."
    port       = "...my_port..."
    protocol   = "...my_protocol..."
  }
  name         = "Marjorie Prohaska"
  workspace_id = "603cc8cd-887e-4760-b813-ef7fc0d176e5"
}