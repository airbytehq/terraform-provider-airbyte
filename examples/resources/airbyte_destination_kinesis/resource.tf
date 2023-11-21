resource "airbyte_destination_kinesis" "my_destination_kinesis" {
  configuration = {
    access_key  = "...my_access_key..."
    buffer_size = 1
    endpoint    = "kinesis.us‑west‑1.amazonaws.com"
    private_key = "...my_private_key..."
    region      = "us‑west‑1"
    shard_count = 1
  }
  definition_id = "83384bd8-7b5c-4ce3-a148-54333df23c5e"
  name          = "Mary Monahan"
  workspace_id  = "52521a04-7878-4c25-8cd1-84fd116e75f1"
}