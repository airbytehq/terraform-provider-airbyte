resource "airbyte_destination_kinesis" "my_destination_kinesis" {
  configuration = {
    access_key  = "...my_access_key..."
    buffer_size = 0
    endpoint    = "kinesis.us‑west‑1.amazonaws.com"
    private_key = "...my_private_key..."
    region      = "us‑west‑1"
    shard_count = 4
  }
  name         = "Kristin Lowe"
  workspace_id = "40d1987e-d52c-4bff-8185-8935bdfe2750"
}