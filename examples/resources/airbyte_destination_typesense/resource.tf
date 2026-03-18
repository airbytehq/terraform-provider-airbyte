resource "airbyte_destination_typesense" "my_destination_typesense" {
  configuration = {
    api_key    = "...my_api_key..."
    batch_size = 1
    host       = "...my_host..."
    path       = "...my_path..."
    port       = "...my_port..."
    protocol   = "...my_protocol..."
  }
  definition_id = "36be8dc6-9851-49af-b776-9d4c30e4ab6a"
  name          = "...my_name..."
  workspace_id  = "4d5d1b2b-06f0-4b0b-9f55-26250b3c87d0"
}