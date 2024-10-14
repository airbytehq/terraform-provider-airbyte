resource "airbyte_source_insightly" "my_source_insightly" {
  configuration = {
    start_date = "2021-03-01T00:00:00Z"
    token      = "...my_token..."
  }
  definition_id = "38e47520-d765-410b-adf5-2924bc66b5ce"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "541ae22f-d577-4a0e-934b-7779fd63f889"
}