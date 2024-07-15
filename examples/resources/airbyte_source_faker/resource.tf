resource "airbyte_source_faker" "my_source_faker" {
  configuration = {
    always_updated    = true
    count             = 5
    parallelism       = 6
    records_per_slice = 6
    seed              = 5
  }
  definition_id = "7eae086e-3c2d-4330-82ab-840e56112c1f"
  name          = "Homer Bartoletti Jr."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a5cfbec2-8765-44f1-abc8-4028fbb0cddc"
}