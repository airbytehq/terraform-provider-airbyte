resource "airbyte_destination_typesense" "my_destination_typesense" {
  configuration = {
    api_key          = "...my_api_key..."
    batch_size       = "...my_batch_size..."
    destination_type = "typesense"
    host             = "...my_host..."
    port             = "...my_port..."
    protocol         = "...my_protocol..."
  }
  name         = "Wm Hane"
  workspace_id = "1d6c645b-08b6-4189-9baa-0fe1ade008e6"
}