resource "airbyte_destination_typesense" "my_destination_typesense" {
  configuration = {
    api_key    = "...my_api_key..."
    batch_size = 2
    host       = "...my_host..."
    path       = "...my_path..."
    port       = "...my_port..."
    protocol   = "...my_protocol..."
  }
  definition_id = "644196a0-4bb9-4666-a7d1-5e7eedd46435"
  name          = "Ruben Raynor"
  workspace_id  = "9fdc13c2-92fc-4fab-b3b9-ba5d3045674a"
}