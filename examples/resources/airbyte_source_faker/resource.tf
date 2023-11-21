resource "airbyte_source_faker" "my_source_faker" {
  configuration = {
    always_updated    = false
    count             = 9
    parallelism       = 8
    records_per_slice = 1
    seed              = 5
  }
  definition_id = "33c76bbd-55f5-466b-8ade-0498ec40fd8a"
  name          = "Kirk Braun MD"
  secret_id     = "...my_secret_id..."
  workspace_id  = "05c5e889-977e-4ae0-86e3-c2d33082ab84"
}