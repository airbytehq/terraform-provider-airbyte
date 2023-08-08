resource "airbyte_source_omnisend" "my_source_omnisend" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "omnisend"
  }
  name         = "Miss Domingo Bahringer"
  secret_id    = "...my_secret_id..."
  workspace_id = "d8706d46-082b-4fbd-841f-f5d4e2ae4fb5"
}