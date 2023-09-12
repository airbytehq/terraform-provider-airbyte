resource "airbyte_source_faker" "my_source_faker" {
  configuration = {
    always_updated    = false
    count             = 3
    parallelism       = 9
    records_per_slice = 5
    seed              = 6
    source_type       = "faker"
  }
  name         = "Delbert Reynolds"
  secret_id    = "...my_secret_id..."
  workspace_id = "cfda8d0c-549e-4f03-8049-78a61fa1cf20"
}