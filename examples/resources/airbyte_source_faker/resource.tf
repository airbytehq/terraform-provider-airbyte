resource "airbyte_source_faker" "my_source_faker" {
  configuration = {
    always_updated    = false
    count             = 3
    parallelism       = 8
    records_per_slice = 2
    seed              = 1
  }
  definition_id = "8b10c62a-eeab-46a1-abc0-f1be55677773"
  name          = "Rhonda Schmidt"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a7fcdac6-3878-454b-a9c4-2e8b9a534c06"
}