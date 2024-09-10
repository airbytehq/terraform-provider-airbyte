resource "airbyte_source_looker" "my_source_looker" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    domain        = "domainname.looker.com"
    run_look_ids = [
      "...",
    ]
  }
  definition_id = "e66d700d-4772-4456-90d2-6d9147bb3566"
  name          = "Cameron Howe"
  secret_id     = "...my_secret_id..."
  workspace_id  = "ba4f7aab-a257-4841-81a2-1c8938ad6fcb"
}