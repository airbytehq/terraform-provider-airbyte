resource "airbyte_destination_typesense" "my_destination_typesense" {
  configuration = {
    api_key    = "...my_api_key..."
    batch_size = 9
    host       = "...my_host..."
    path       = "...my_path..."
    port       = "...my_port..."
    protocol   = "...my_protocol..."
  }
  definition_id = "7fd71366-4c8a-4b08-8c24-8e91396f3407"
  name          = "Pauline Hayes"
  workspace_id  = "00686d04-e608-4039-bc7e-b0732a47524b"
}