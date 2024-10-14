resource "airbyte_destination_typesense" "my_destination_typesense" {
  configuration = {
    api_key    = "...my_api_key..."
    batch_size = 1
    host       = "...my_host..."
    path       = "...my_path..."
    port       = "...my_port..."
    protocol   = "...my_protocol..."
  }
  definition_id = "09194d31-6259-4e62-bc00-bbff9003411f"
  name          = "...my_name..."
  workspace_id  = "4d5d1b2b-06f0-4b0b-9f55-26250b3c87d0"
}