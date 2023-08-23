resource "airbyte_destination_kinesis" "my_destination_kinesis" {
  configuration = {
    access_key       = "...my_access_key..."
    buffer_size      = 9
    destination_type = "kinesis"
    endpoint         = "kinesis.us‑west‑1.amazonaws.com"
    private_key      = "...my_private_key..."
    region           = "us‑west‑1"
    shard_count      = 4
  }
  name         = "Javier Price"
  workspace_id = "bc0ab3c2-0c4f-4378-9fd8-71f99dd2efd1"
}