resource "airbyte_source_xkcd" "my_source_xkcd" {
  configuration = {
    source_type = "xkcd"
  }
  name         = "Roberto Jones IV"
  secret_id    = "...my_secret_id..."
  workspace_id = "91500970-19a4-48f8-8ece-7bf904e01105"
}