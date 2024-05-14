resource "airbyte_source_insightly" "my_source_insightly" {
  configuration = {
    start_date = "2021-03-01T00:00:00Z"
    token      = "...my_token..."
  }
  definition_id = "3bd5563e-04de-4287-b752-65fdff2deb8c"
  name          = "Elijah Connelly"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4a92033b-17bf-4cc5-a6af-10da401fb0fc"
}