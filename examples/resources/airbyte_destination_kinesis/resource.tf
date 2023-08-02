resource "airbyte_destination_kinesis" "my_destination_kinesis" {
  configuration = {
    access_key       = "...my_accessKey..."
    buffer_size      = 5
    destination_type = "kinesis"
    endpoint         = "kinesis.us‑west‑1.amazonaws.com"
    private_key      = "...my_privateKey..."
    region           = "us‑west‑1"
    shard_count      = 2
  }
  name         = "Carmen McClure"
  workspace_id = "26071f93-f5f0-4642-9ac7-af515cc413aa"
}