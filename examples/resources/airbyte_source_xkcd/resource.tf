resource "airbyte_source_xkcd" "my_source_xkcd" {
  configuration = {
    source_type = "xkcd"
  }
  name         = "Mr. Laurence Littel"
  secret_id    = "...my_secret_id..."
  workspace_id = "18d97e15-2297-4510-9a80-312292cc61c2"
}