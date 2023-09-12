resource "airbyte_source_insightly" "my_source_insightly" {
  configuration = {
    source_type = "insightly"
    start_date  = "2021-03-01T00:00:00Z"
    token       = "...my_token..."
  }
  name         = "Dana Lindgren"
  secret_id    = "...my_secret_id..."
  workspace_id = "0a9eba47-f7d3-4ef0-8964-0d6a1831c87a"
}