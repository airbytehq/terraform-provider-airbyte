resource "airbyte_destination_typesense" "my_destination_typesense" {
  configuration = {
    api_key    = "...my_api_key..."
    batch_size = 5
    host       = "...my_host..."
    path       = "...my_path..."
    port       = "...my_port..."
    protocol   = "...my_protocol..."
  }
  definition_id = "860231ad-193a-4f49-9985-c92d33cae7ed"
  name          = "Miss Micheal Bauch"
  workspace_id  = "39e69c6f-21d6-4541-b3cc-cbbc51a3caa6"
}