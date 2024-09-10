resource "airbyte_source_faker" "my_source_faker" {
  configuration = {
    always_updated    = true
    count             = 6
    parallelism       = 0
    records_per_slice = 7
    seed              = 6
  }
  definition_id = "af77ae08-fd2c-4af8-bf04-5910a7c57057"
  name          = "Latoya Kuvalis"
  secret_id     = "...my_secret_id..."
  workspace_id  = "169da4e6-d7c2-4fca-a386-da1d2ddf0351"
}