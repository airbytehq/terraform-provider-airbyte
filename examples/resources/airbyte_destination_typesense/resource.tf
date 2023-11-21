resource "airbyte_destination_typesense" "my_destination_typesense" {
  configuration = {
    api_key    = "...my_api_key..."
    batch_size = 6
    host       = "...my_host..."
    port       = "...my_port..."
    protocol   = "...my_protocol..."
  }
  definition_id = "e69c6f21-d654-4173-8ccb-bc51a3caa62e"
  name          = "Lorraine Kiehn"
  workspace_id  = "a0d33800-2a57-467f-8f37-9fa4011eae8d"
}