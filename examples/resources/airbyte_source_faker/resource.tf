resource "airbyte_source_faker" "my_source_faker" {
  configuration = {
    always_updated    = true
    count             = 2
    parallelism       = 5
    records_per_slice = 0
    seed              = 8
  }
  definition_id = "dc2e9642-f3c2-4fe1-9c32-edfee92bc337"
  name          = "Iris Simonis"
  secret_id     = "...my_secret_id..."
  workspace_id  = "887f28ef-975a-47b1-82e5-487915a2f449"
}