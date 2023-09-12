resource "airbyte_destination_typesense" "my_destination_typesense" {
  configuration = {
    api_key          = "...my_api_key..."
    batch_size       = 0
    destination_type = "typesense"
    host             = "...my_host..."
    port             = "...my_port..."
    protocol         = "...my_protocol..."
  }
  name         = "Conrad Rutherford"
  workspace_id = "e253b668-451c-46c6-a205-e16deab3fec9"
}