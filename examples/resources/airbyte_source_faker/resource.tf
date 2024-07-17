resource "airbyte_source_faker" "my_source_faker" {
  configuration = {
    always_updated    = false
    count             = 2
    parallelism       = 6
    records_per_slice = 9
    seed              = 3
  }
  definition_id = "b0b68d5f-b4b9-49e2-b7dc-2833c76bbd55"
  name          = "Jon Howell"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4ade0498-ec40-4fd8-ad91-61a05c5e8899"
}