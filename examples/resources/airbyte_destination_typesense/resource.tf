resource "airbyte_destination_typesense" "my_destination_typesense" {
  configuration = {
    api_key    = "...my_api_key..."
    batch_size = 7
    host       = "...my_host..."
    path       = "...my_path..."
    port       = "...my_port..."
    protocol   = "...my_protocol..."
  }
  definition_id = "b490aa75-3ad1-4190-aba1-88860231ad19"
  name          = "Sandy Wuckert"
  workspace_id  = "1985c92d-33ca-4e7e-9b40-1c239e69c6f2"
}