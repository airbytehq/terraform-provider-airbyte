resource "airbyte_destination_streamr_airbyte_connectors" "my_destination_streamrairbyteconnectors" {
  configuration = {
    private_key = "...my_private_key..."
    stream_id   = "0x0d0102474519cd2fc1b3e3f962a87e39cbcbead2/test-streamr"
  }
  definition_id = "2543befe-6129-4dc4-9ac1-be1cb631967c"
  name          = "...my_name..."
  workspace_id  = "7055221d-141e-4cca-bd8d-d2ba7adf4a2f"
}