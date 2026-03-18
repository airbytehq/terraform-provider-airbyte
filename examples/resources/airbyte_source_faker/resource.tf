resource "airbyte_source_faker" "my_source_faker" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    always_updated        = true
    count                 = 1000
    parallelism           = 4
    records_per_slice     = 1000
    seed                  = -1
  }
  definition_id = "dfd88b22-b603-4c3d-aad7-3701784586b1"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "ee51eafe-11ff-4a9a-99c4-b72ee665ba32"
}