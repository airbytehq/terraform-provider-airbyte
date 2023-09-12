resource "airbyte_destination_kinesis" "my_destination_kinesis" {
  configuration = {
    access_key       = "...my_access_key..."
    buffer_size      = 1
    destination_type = "kinesis"
    endpoint         = "kinesis.us‑west‑1.amazonaws.com"
    private_key      = "...my_private_key..."
    region           = "us‑west‑1"
    shard_count      = 9
  }
  name         = "Opal Kozey"
  workspace_id = "5bc0ab3c-20c4-4f37-89fd-871f99dd2efd"
}