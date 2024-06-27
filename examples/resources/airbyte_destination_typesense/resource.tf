resource "airbyte_destination_typesense" "my_destination_typesense" {
  configuration = {
    api_key    = "...my_api_key..."
    batch_size = 0
    host       = "...my_host..."
    path       = "...my_path..."
    port       = "...my_port..."
    protocol   = "...my_protocol..."
  }
  definition_id = "aa753ad1-1902-4ba1-8886-0231ad193af4"
  name          = "Raymond McDermott"
  workspace_id  = "c92d33ca-e7ed-4b40-9c23-9e69c6f21d65"
}