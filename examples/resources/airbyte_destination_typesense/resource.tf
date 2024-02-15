resource "airbyte_destination_typesense" "my_destination_typesense" {
  configuration = {
    api_key    = "...my_api_key..."
    batch_size = 5
    host       = "...my_host..."
    port       = "...my_port..."
    protocol   = "...my_protocol..."
  }
  definition_id = "42c101e2-65ee-4bc2-b0b1-5094cc21854e"
  name          = "Jonathon Kshlerin"
  workspace_id  = "7d1c9ddc-2da3-462f-af1b-28fe26cb1bb0"
}