resource "airbyte_source_faker" "my_source_faker" {
  configuration = {
    always_updated    = false
    count             = 9
    parallelism       = 7
    records_per_slice = 3
    seed              = 3
  }
  definition_id = "97add71f-fdea-4586-a097-09edcef2c435"
  name          = "Sophia Kuphal"
  secret_id     = "...my_secret_id..."
  workspace_id  = "149e6fe9-a76b-4d27-9d6f-7a77e51b04b8"
}