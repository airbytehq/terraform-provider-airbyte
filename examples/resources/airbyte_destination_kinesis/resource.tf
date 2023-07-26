resource "airbyte_destination_kinesis" "my_destination_kinesis" {
  configuration = {
    access_key       = "...my_accessKey..."
    buffer_size      = 1
    destination_type = "kinesis"
    endpoint         = "kinesis.us‑west‑1.amazonaws.com"
    private_key      = "...my_privateKey..."
    region           = "us‑west‑1"
    shard_count      = 4
  }
  name         = "Joann Bogan"
  workspace_id = "9d08086a-1840-4394-8260-71f93f5f0642"
}