resource "airbyte_destination_kinesis" "my_destination_kinesis" {
  configuration = {
    access_key  = "...my_access_key..."
    buffer_size = 2
    endpoint    = "kinesis.us‑west‑1.amazonaws.com"
    private_key = "...my_private_key..."
    region      = "us‑west‑1"
    shard_count = 8
  }
  definition_id = "f17a6683-bb76-4cbd-942c-04b7b603cc8c"
  name          = "Clifton Larkin"
  workspace_id  = "7603813e-f7fc-40d1-b6e5-f414549f1242"
}