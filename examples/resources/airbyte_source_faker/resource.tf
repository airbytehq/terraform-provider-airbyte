resource "airbyte_source_faker" "my_source_faker" {
  configuration = {
    always_updated    = true
    count             = 1
    parallelism       = 8
    records_per_slice = 9
    seed              = 8
  }
  definition_id = "7fa43101-44ad-4dbe-a821-bd8c667b2073"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "ee51eafe-11ff-4a9a-99c4-b72ee665ba32"
}