resource "airbyte_destination_typesense" "my_destination_typesense" {
  configuration = {
    api_key          = "...my_api_key..."
    batch_size       = "...my_batch_size..."
    destination_type = "typesense"
    host             = "...my_host..."
    port             = "...my_port..."
    protocol         = "...my_protocol..."
  }
  name         = "Jodi Mueller"
  workspace_id = "1d311352-965b-4b8a-b202-611435e139db"
}